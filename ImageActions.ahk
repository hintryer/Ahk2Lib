class ImageActions {

    ; Static Methods =========================================================================================================================================

    static Click(imageText) {
        return this.New(imageText).Wait('wait1', -1).Click()    ;waits indefinitely for image to appear then clicks it
    }
 
    static ClickAllInstances(imageText) {
        return this.New(imageText).ClickAllInstances()
    }

    static ClickBottomToTop(imageText) {
        return this.New(imageText).Wait("wait1", -1).SearchDirection(6).Click()
    }

    static ClickInstance(imageText, instanceNumber) {
        return this.New(imageText).Wait('wait1', -1).ClickInstance(instanceNumber)

    }

    static ClickInstanceTimeout(imageText, seconds, instanceNumber) {
        return this.New(imageText).Timeout(seconds).ClickInstance(instanceNumber)

    }

    static ClickNextInstance(imageText) {
        return this.New(imageText).ClickNextInstance(imageText)

    }

    static ClickOffset(imageText, xOff := 0, yOff := 0) {
        return this.New(imageText).Wait('wait1', -1).Offset(xOff, yOff).Click()
    }

    static ClickOffsetTimeout(imageText, xOff, yOff, seconds) {
        return this.New(imageText).Offset(xOff, yOff).Timeout(seconds).Click()
    }

    static ClickRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).Click()
    }

    static ClickRegionOffset(imageText, x1, y1, x2, y2, xOff, yOff) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).Offset(xOff, yOff).Click()
    }

    static ClickRegionOffsetSleep(imageText, x1, y1, x2, y2, xOff, yOff) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).Offset(xOff, yOff).Sleep(200, 200).Click()
    }

    static ClickRegionTimeout(imageText, x1, y1, x2, y2, seconds) {
        return this.New(imageText).Region(x1, y1, x2, y2).Timeout(seconds).Click()
    }

    static ClickRightToLeft(imageText) {
        return this.New(imageText).Wait('wait1', -1).SearchDirection(7).Click()
    }

    static ClickTimeout(imageText, seconds) {
        return this.New(imageText).Timeout(seconds).Click()
    }

    static ClickVar(imageText) {
        return this.New(imageText).Variation(0.1).Click()
    }

    static ClickWebsite(imageText) {
        return this.New(imageText).Wait('wait1', -1).Variation(0.1).Sleep(400, 300).Click()
    }

    static DoubleClick(imageText) {
        return this.New(imageText).Wait('wait1', -1).DoubleClick()
    }

    static DoubleClickOffset(imageText, xOff, yOff) {
        return this.New(imageText).Wait('wait1', -1).Offset(xOff, yOff).DoubleClick()
    }

    static DoubleClickRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).DoubleClick()
    }

    static DoubleClickRegionOffset(imageText, x1, y1, x2, y2, xOff, yOff) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).Offset(xOff, yOff).DoubleClick()
    }

    static FindAll(imageText, &X := "", &Y := "") {
        instances := this.New(imageText).FindAll().Find(&x, &y)
        if (!IsObject(instances)) {
            return []
        }
        return instances
    }

    static FindAllRegion(imageText, x1, y1, x2, y2, &X := "", &Y := "") {
        instances := this.New(imageText).Region(x1, y1, x2, y2).FindAll().Find(&x, &y)
        if (!IsObject(instances)) {
            return []
        }
        return instances
    }
    
    static Found(imageText, &X := "", &Y := "") { ;finds one instance
        return this.New(imageText).Find(&X, &Y)
    }

    static FoundRegion(imageText, x1, y1, x2, y2, &X := "", &Y := "") {
        return this.New(imageText).Region(x1, y1, x2, y2).Find(&X, &Y)
    }

    static FoundRegionBottomToTop(imageText, x1, y1, x2, y2, &X := "", &Y := "") {
        return this.New(imageText).Region(x1, y1, x2, y2).SearchDirection(6).Find(&X, &Y)
    }

    static FoundRegionTimeout(imageText, x1, y1, x2, y2, seconds, &X := "", &Y := "") {
        return this.New(imageText).Region(x1, y1, x2, y2).Timeout(seconds).Find(&X, &Y)
    }

    static FoundTimeout(imageText, seconds, &X := "", &Y := "") {
        return this.New(imageText).Timeout(seconds).Find()
    }

    static HighlightInstances(imageText) {
        return this.New(imageText).HighlightAllInstances()
    }

    static HighlightInstancesRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Region(x1, y1, x2, y2).HighlightAllInstances()
    }

    static Move(imageText) {
        return this.New(imageText).Wait("wait1", -1).Move()
    }

    static MoveRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Wait("wait1", -1).Region(x1, y1, x2, y2).Move()
    }

    static MoveClickRight(firstImage, secondImage, verticalRange) {
        return this.New(firstImage).MoveClickRight(secondImage, verticalRange)
    }
  
    static OcrCursorPrice(imageText, ocrText, xOffset, yOffset, width, height) {
        return this.New(imageText).OcrOffset(ocrText, xOffset, yOffset, width, height)
    }

    static RightClick(imageText) {
        return this.New(imageText).Wait('wait1', -1).RightClick()
    }

    static RightClickOffset(imageText, xOff, yOff) {
        return this.New(imageText).Wait('wait1', -1).Offset(xOff, yOff).RightClick()
    }

    static RightClickRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Wait('wait1', -1).Region(x1, y1, x2, y2).RightClick()
    }

    static WaitTilFound(imageText, &X := "", &Y := "") {
        return this.New(imageText).Wait("wait1", -1).Find(&X, &Y)
    }

    static WaitTilFoundRegion(imageText, x1, y1, x2, y2, &X := "", &Y := "") {
        return this.New(imageText).Wait("wait1", -1).Region(x1, y1, x2, y2).Find(&X, &Y)
    }

    static WaitTilFoundRegionBottomToTop(imageText, x1, y1, x2, y2, &X := "", &Y := "") {
        return this.New(imageText).Wait("wait1", -1).Region(x1, y1, x2, y2).SearchDirection(6).Find(&X, &Y)
    }

    static WaitTilFoundTimeout(imageText, seconds, &X := "", &Y := "") {
        return this.New(imageText).Wait("wait1", -1).Timeout(seconds).Find(&X, &Y)
    }

    static WaitTilNotFound(imageText) {
        return this.New(imageText).Wait("wait0", -1).Find()
    }

    static WaitTilNotFoundRegion(imageText, x1, y1, x2, y2) {
        return this.New(imageText).Wait("wait0", -1).Region(x1, y1, x2, y2).Find()
    }
    
    ; Inner Class =========================================================================================================================================

    class ImageAction {
        __New(imageText) {
            this.waitType := ""
            this.waitTime := ""
            this.x1 := 0
            this.y1 := 0
            this.x2 := A_ScreenWidth
            this.y2 := A_ScreenHeight
            this.var := 0
            this.imageText := imageText
            this.instances := 0 ;finds first instance
            this.direction := 1 ;left to right, top to bottom
            this.xOff := 0
            this.yOff := 0
            this.preSleep := 0
            this.postSleep := 0
            this.clickCount := 1
        }

        ; Chainable Configuration Methods -----------------------------------------------------------------------

        Wait(type, time) {
            this.waitType := type
            this.waitTime := time
            return this
        }

        Timeout(seconds) {
            this.waitType := "wait"
            this.waitTime := seconds
            return this
        }

        Region(x1, y1, x2, y2) {
            this.x1 := x1
            this.y1 := y1
            this.x2 := x2
            this.y2 := y2
            return this
        }

        Variation(var) {
            this.var := var
            return this
        }

        FindAll(instances := 1) {
            this.instances := instances
            return this
        }

        SearchDirection(direction) {
            this.direction := direction
            return this
        }

        Offset(xOff, yOff) {
            this.xOff := xOff
            this.yOff := yOff
            return this
        }

        Sleep(preSleep, postSleep) {
            this.preSleep := preSleep
            this.postSleep := postSleep
            return this
        }

        ; Core Action Methods -----------------------------------------------------------------------
         
        Click() {
            if FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , this.instances, , , , this.direction) {
                Sleep(this.preSleep)
                FindText().Click(X + this.xOff, Y + this.yOff, "L", this.clickCount)
                Sleep(this.postSleep)
                return true
            }
            return false
        }

        ClickAllInstances(minMatches := 0) {
            instances := FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , , , , , this.direction)
            if (instances AND instances.Length >= minMatches) {
                for index, result in instances {
                    x := result.x
                    y := result.y
                    FindText().Click(x, y, "L")
                }
                return true
            }
            return false
        }

        ClickInstance(instanceNumber) {
            instances := FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , , , , , this.direction)
            if (instances AND instances.Length >= instanceNumber) {
                Instance := instances[instanceNumber]
                FindText().Click(Instance.x, Instance.y, "L")
                return true
            }
        }

        ClickNextInstance(imageText) {
            static counters := Map()
            instances := FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , , , , , this.direction)
            
            if (!instances OR instances.Length = 0) {
                return false
            }
            
            if (!counters.Has(imageText)) {
                counters[imageText] := 1
            }
            
            currentIndex := counters[imageText]
            
            if (currentIndex > instances.Length) {
                currentIndex := 1
            }
            
            result := instances[currentIndex]
            x := result.x
            y := result.y
            FindText().Click(x, y, "L")
            counters[imageText] := currentIndex + 1
            return true
        }

        DoubleClick() {
            this.clickCount := 2
            return this.Click()
        }

        Find(&X := "", &Y := "") {
            return FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , this.instances, , , , this.direction)
        }

        HighlightAllInstances(showTime?, color := "Yellow", d := 2) {
            instances := FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , , , , , this.direction)
            if (instances) {
                for index, result in instances {
                    Highlight(result.1, result.2, result.3, result.4, showTime?, color, d)
                }
                return true
            }
            return false
        }

        Move() {
            if this.Find(&X, &Y) {
                MouseMove(X + this.xOff, Y + this.yOff)
                return true
            }
            return false
        }

       MoveClickRight(secondImage, verticalRange) {
            if (ok := FindText(&X := "wait1", &Y := -1, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText)) {
                firstX := ok[1].x
                firstY := ok[1].y
                MouseMove(firstX, firstY)
                if (ok2 := FindText(&X := "wait1", &Y := -1, firstX, firstY - verticalRange, A_ScreenWidth, firstY +
                    verticalRange, 0.1, 0.1, secondImage)) {
                    Sleep(this.preSleep)
                    FindText().Click(ok2[1].x, ok2[1].y, "L", this.clickCount)
                    Sleep(this.postSleep)
                    return true
                }
            }
            return false
        }      

        OCR(&result := "") {
            if (ok := FindText(&X := "wait1", &Y := -1, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText
            )) {
                ocrResult := FindText().OCR(ok)
                result := ocrResult.text
                return Number(result)
            }
            return 0
        }

        OcrOffset(ocrText, xOffset, yOffset, width, height) {
            if (ok := FindText(&X := this.waitType, &Y := this.waitTime
                , this.x1, this.y1, this.x2, this.y2
                , this.var, this.var, this.imageText)) 
            {
                baseX := ok[1].x ; center x
                baseY := ok[1].y ; center y

                ocrX1 := baseX + xOffset
                ocrY1 := baseY + yOffset
                ocrX2 := ocrX1 + width
                ocrY2 := ocrY1 + height

                if (ok2 := FindText(&X := "wait1", &Y := -1, ocrX1, ocrY1, ocrX2, ocrY2, 0, 0, ocrText)) 
                {
                    ocrResult := FindText().OCR(ok2)
                    result := ocrResult.text

                    if (result != "") {
                        return result
                    }
                }
            }
            return ""
        }

        RightClick() {
            if FindText(&X := this.waitType, &Y := this.waitTime, this.x1, this.y1, this.x2, this.y2, this.var, this.var, this.imageText, , this.instances, , , , this.direction) {
                FindText().Click(X + this.xOff, Y + this.yOff, "R")
                return true
            }
            return false
        }

    }

    ; Factory Method
    static New(imageText) {
        return ImageActions.ImageAction(imageText)
    }
}


; Functions =========================================================================================================================================

Highlight(x?, y?, w?, h?, showTime?, color := "Yellow", d := 2) {
    static guis := Map(), timers := Map(), globalClearTimer := ""
    if IsSet(x) {
        if IsObject(x) {
            d := x.HasOwnProp("d") ? x.d : d, color := x.HasOwnProp("color") ? x.color : color, showTime := x.HasOwnProp(
                "showTime") ? x.showTime : showTime
            , h := x.HasOwnProp("h") ? x.h : h, w := x.HasOwnProp("w") ? x.w : h, y := x.HasOwnProp("y") ? x.y : y, x :=
            x.HasOwnProp("x") ? x.x : unset
        }
        if !(IsSet(x) && IsSet(y) && IsSet(w) && IsSet(h))
            throw ValueError("x, y, w and h arguments must all be provided for a highlight", -1)
        for k, v in guis {
            if k.x = x && k.y = y && k.w = w && k.h = h {
                if !IsSet(showTime) || (IsSet(showTime) && showTime = "clear")
                    TryRemoveTimer(k), TryDeleteGui(k)
                else if showTime = 0
                    TryRemoveTimer(k)
                else if IsInteger(showTime) {
                    if showTime < 0 {
                        if !timers.Has(k)
                            timers[k] := Highlight.Bind(x, y, w, h)
                        SetTimer(timers[k], showTime)
                    } else {
                        TryRemoveTimer(k)
                    }
                } else
                    throw ValueError('Invalid showTime value "' (!IsSet(showTime) ? "unset" : IsObject(showTime) ?
                        "{Object}" : showTime) '"', -1)
                return
            }
        }
    } else {
        if globalClearTimer
            SetTimer(globalClearTimer, 0), globalClearTimer := ""
        for k, v in timers
            SetTimer(v, 0)
        for k, v in guis
            v.Destroy()
        guis := Map(), timers := Map()
        return
    }

    if (showTime := showTime ?? 3000) = "clear"
        return
    else if !IsInteger(showTime)
        throw ValueError('Invalid showTime value "' (!IsSet(showTime) ? "unset" : IsObject(showTime) ? "{Object}" :
            showTime) '"', -1)

    loc := { x: x, y: y, w: w, h: h }
    guis[loc] := Gui("+AlwaysOnTop -Caption +ToolWindow -DPIScale +E0x08000000")
    GuiObj := guis[loc]
    GuiObj.BackColor := color
    iw := w + d, ih := h + d, w := w + d * 2, h := h + d * 2, x := x - d, y := y - d
    WinSetRegion("0-0 " w "-0 " w "-" h " 0-" h " 0-0 " d "-" d " " iw "-" d " " iw "-" ih " " d "-" ih " " d "-" d,
        GuiObj.Hwnd)
    GuiObj.Show("NA x" . x . " y" . y . " w" . w . " h" . h)

    if showTime > 0 {
        if guis.Count = 1 {
            globalClearTimer := ClearAllHighlights
            SetTimer(globalClearTimer, showTime)
        }
    } else if showTime < 0 {
        if guis.Count = 1 {
            globalClearTimer := ClearAllHighlights
            SetTimer(globalClearTimer, -showTime)
        }
    }

    ClearAllHighlights() {
        if globalClearTimer
            SetTimer(globalClearTimer, 0), globalClearTimer := ""
        for k, v in timers
            SetTimer(v, 0)
        for k, v in guis
            v.Destroy()
        guis := Map(), timers := Map()
    }

    TryRemoveTimer(key) {
        if timers.Has(key)
            SetTimer(timers[key], 0), timers.Delete(key)
    }

    TryDeleteGui(key) {
        if guis.Has(key)
            guis[key].Destroy(), guis.Delete(key)
    }
}