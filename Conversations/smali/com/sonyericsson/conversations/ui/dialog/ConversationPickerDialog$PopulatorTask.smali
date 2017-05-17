.class Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;
.super Landroid/os/AsyncTask;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopulatorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mPopulatorListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;

.field private mSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;)V
    .locals 1
    .param p1, "populatorListener"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mSortedData:Ljava/util/List;

    .line 339
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mPopulatorListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;

    .line 338
    return-void
.end method

.method private getConversationData(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;
    .locals 9
    .param p1, "item"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    .line 382
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 383
    .local v0, "cm":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 384
    .local v2, "convId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    .line 386
    .local v1, "conv":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 388
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v6

    .line 390
    iget-object v7, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    iget v8, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 388
    invoke-interface {v6, v2, v3, v7, v8}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getConversationName(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 392
    .local v5, "titleTextSsb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .line 393
    .local v4, "secondaryText":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    .end local v4    # "secondaryText":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;

    invoke-direct {v6, p1, v3, v5, v4}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItem;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-object v6

    .line 394
    .restart local v4    # "secondaryText":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .local v4, "secondaryText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 344
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    .line 348
    .local v0, "cia":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v3, "openConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 350
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 351
    .local v1, "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    iget-object v4, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local v1    # "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getImItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 357
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getImItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 358
    .restart local v1    # "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    iget-object v4, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    .end local v1    # "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 365
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 366
    .restart local v1    # "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mSortedData:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->getConversationData(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->publishProgress([Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    return-object v6

    .line 372
    .end local v1    # "item":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_5
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mPopulatorListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mSortedData:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;->handleListDoneUpdating(Ljava/util/List;)V

    .line 401
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 406
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mPopulatorListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->mSortedData:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;->handleListUpdateTick(Ljava/util/List;)V

    .line 406
    return-void
.end method
