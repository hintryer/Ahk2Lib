#SingleInstance Force
#Include <ImagePut>
#Include <RapidOcr\RapidOcr>

global ocr := RapidOcr()
global ocrParam := RapidOcr.OcrParam({doAngle: false})

OCRRand(x1, y1, x2, y2)
{
    global ocr, ocrParam

    try
    {
        ; 安全校验：坐标必须有效
        if (x1 >= x2 || y1 >= y2)
            throw Error("无效的区域坐标")

        w := x2 - x1
        h := y2 - y1

        buf := ImagePutBuffer([x1, y1, w, h])

        bmp_data := Buffer(24, 0)  ; 固定 24 字节！
        NumPut('ptr', buf.ptr, bmp_data, 0) ; 像素数据指针
        NumPut('uint', buf.stride, bmp_data, 8) ; 行字节数
        NumPut('int', buf.width, bmp_data, 12) ; 宽度
        NumPut('int', buf.height, bmp_data, 16) ; 高度
        NumPut('int', 4, bmp_data, 20) ; 每像素字节数
        return ocr.ocr_from_bitmapdata(bmp_data.Ptr, ocrParam)
    }
    catch as e
    {
        MsgBox "识别错误：" e.Message
        return ""
    }
}
res := OCRRand(50, 50, 100, 200)
MsgBox res
Esc::ExitApp()
