<div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Share Document (Pop up)</h4>
        </div>

        <div class="modal-body">
            <form class="form-horizontal" >
                <div class="form-group">
                    <label class="control-label col-sm-2">Document</label>
                    <div class="col-sm-10">

                        <input class="form-control" type="file" name="document" id="document"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2 font-normal" for="email" style="text-align: left">Description*</label>
                    <div class="col-sm-10">

                        <textarea  class="form-control" rows="4" placeholder="Description" id="description"></textarea>
                    </div>

                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Topic*</label>


                    <div class="col-sm-10">

                        <select name='topic' id="topicDocument">

                        </select>

                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">

                        <input type="button" name="Share" value="Share" id="shareDocumentBtn" class="btn btn-primary"/>

                        <input type="button" name="Cancel" id="cancel1" value="Cancel" data-dismiss="modal" class="btn btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>