
Sub Easy()
    'Loop through the sheets
    Dim ws As Worksheet
    For Each ws In Worksheets
        
        'Declaring and Assigning Variables
        Dim Ticker_Name As String
    
        Dim Total_Stock_Volume As Double
        Total_Stock_Volume = 0
        
        Dim Total_Table_Row As Integer
        Total_Table_Row = 2
    
        'Last Row
        Last_Row = ws.Cells(Rows.Count, 1).End(xlUp).Row
    
        'Labeling Headers
        ws.Range("I1").Value = "Ticker"
        ws.Range("J1").Value = "Total Stock Volume"
    
        'Summary Table
        For I = 2 To Last_Row
            If ws.Cells(I + 1, 1).Value <> ws.Cells(I, 1).Value Then
            Ticker_Name = ws.Cells(I, 1).Value
            Total_Stock_Volume = Total_Stock_Volume + ws.Cells(I, 7).Value
            
            ws.Cells(Total_Table_Row, 9).Value = Ticker_Name
            ws.Cells(Total_Table_Row, 10).Value = Total_Stock_Volume
            
            Total_Table_Row = Total_Table_Row + 1
            
            Total_Stock_Volume = 0
            
            Else
                Total_Stock_Volume = Total_Stock_Volume + ws.Cells(I, 7).Value
            End If
        Next I
   Next ws
End Sub


