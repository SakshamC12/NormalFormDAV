import React, { useEffect, useState } from 'react';
import axios from 'axios';

function formatTableName(name) {
  // List of normalization form abbreviations to keep uppercase
  const ABBREVIATIONS = ['UNF', '1NF', '2NF', '3NF', '4NF', '5NF', 'BCNF'];
  return name
    .split('_')
    .map(part => {
      const upper = part.toUpperCase();
      if (ABBREVIATIONS.includes(upper)) return upper;
      // Handle things like pre4nf, pre5nf, preBCNF, etc.
      const preMatch = upper.match(/^PRE(\d?)(NF|BCNF|5NF|4NF)$/);
      if (preMatch) {
        // e.g., PRE4NF => Pre-4NF, PREBCNF => Pre-BCNF
        return 'Pre-' + (preMatch[1] ? preMatch[1] : '') + preMatch[2];
      }
      // Otherwise, capitalize first letter
      return part.charAt(0).toUpperCase() + part.slice(1).toLowerCase();
    })
    .join(' ');
}

function NormalFormTable({ endpoint }) {
  const [data, setData] = useState([]);
  const [columns, setColumns] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    setLoading(true);
    setError(null);
    axios.get(`http://localhost:3001/api/${endpoint}`)
      .then((res) => {
        setData(res.data);
        setColumns(res.data.length > 0 ? Object.keys(res.data[0]) : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Failed to fetch data');
        setLoading(false);
      });
  }, [endpoint]);

  if (loading) return <div>Loading {endpoint}...</div>;
  if (error) return <div style={{ color: 'red' }}>{error}</div>;
  if (data.length === 0) return <div>No data for {endpoint}.</div>;

  return (
    <div style={{ marginBottom: 20 }}>
      <h3>{formatTableName(endpoint)}</h3>
      <table border="1" cellPadding="6" style={{ borderCollapse: 'collapse', width: '100%' }}>
        <thead>
          <tr>
            {columns.map((col) => (
              <th key={col}>{col}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {data.map((row, i) => (
            <tr key={i}>
              {columns.map((col) => (
                <td key={col}>{row[col]}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default NormalFormTable; 