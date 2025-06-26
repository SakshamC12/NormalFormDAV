# Install backend dependencies
Write-Host "Installing backend dependencies..."
cd "backend"
npm install
cd ..

# Install frontend dependencies
Write-Host "Installing frontend dependencies..."
cd "frontend"
npm install
cd ..

# Start backend server in a new window
timeout /t 2
Start-Process powershell -ArgumentList 'cd "backend"; npm start'

# Start frontend server in a new window
timeout /t 2
Start-Process powershell -ArgumentList 'cd "frontend"; npm start'

Write-Host "Both servers are starting in new windows." 

cd "C:\DAV Normal"

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass