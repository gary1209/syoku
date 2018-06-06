

$(document).ready(function() {
        
    //點擊新增步驟，增加步驟欄位
    $('#stepAdd').click(function() {
        $('#cookstep').append( ' <div class="form-inline m-1 " name="stepbar"> <textarea class="form-control" name="step" id="step" rows="3" cols="110" required placeholder="請輸入步驟" style="resize: none"></textarea>  <button type = "button" id="stepDel" class="btn btn-outline btn-danger">刪除</button>        </div>'
         )
    })

    $('#cookstep').on('click','#stepDel',function(){
                             $(this).parent("div").remove();
    })

    $('#foodAdd').click(function() {
        $('#foodlist').append( '<div class="form-inline  " name="foodbar">    <input type="text" class="form-control col-sm-5 m-1" placeholder="食材" name="food" required>   <input type="text" class="form-control  required  col-sm-3 m-1" placeholder="份量" name="fQty"  required>            <button type = "button" id="foodDel" class="btn btn-outline btn-danger col-sm-2">刪除</button>        </div>'
         )
    })

    $('#foodlist').on('click','#foodDel',function(){
                             $(this).parent("div").remove();
    })

    $('#sbmBtn').click(function(){  
    
        fodlist = []//宣告陣列
        $('div[name="foodbar"]').each(function(index){ //取出所有foodbar 
            fod = {}//宣告物件
            fod.name = $(this).children('input[name="food"]').val()//將名為food的input內值取出
            fod.qty = $(this).children('input[name="fQty"]').val()
            fodlist.push(fod)
        });
        
        recFood = JSON.stringify(fodlist)
        $('#recFood').val(recFood)

        stplist = []
        $('div[name="stepbar"]').each(function(index){    
            stp = $(this).children('textarea[name="step"]').val()    
            stplist.push(stp)
        });
        
        recStep= JSON.stringify(stplist)
        $('#recStep').val(recStep)
        sb()
    })                             
})
// var coverflag = false
function openFile(event){
    var input = event.target
    var reader = new FileReader()
    // coverflag =true
    reader.readAsDataURL(input.files[0])
    reader.onload = function(){
        var dataURL = reader.result
        $('#imgrecipename').attr('src', dataURL).show()
        }
}

function sb(){
   
    if($('#recName').val() != "" &&  $('#recDesc').val() != "" && $('#recCal').val() != "" &&  $('input[name="food"]').val() != "" && $('input[name="fQty"]').val() && $('textarea[name="step"]').val() != "" && $('#recPortion').val() != "" && $('#recTime').val() != "" ){
       
        $('#reciptform').submit()
    }
    else{
        alert("資料輸入不完全")
    }
}

