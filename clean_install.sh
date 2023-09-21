pip install -r requirements_frozen.txt
az extension add --upgrade -n quantum
dotnet tool install --local Microsoft.Quantum.IQSharp
dotnet iqsharp install --user
dotnet tool list