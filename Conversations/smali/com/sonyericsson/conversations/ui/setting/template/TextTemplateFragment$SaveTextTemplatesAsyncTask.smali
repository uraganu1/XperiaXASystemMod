.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTextTemplatesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 324
    invoke-static {v1}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v0

    .line 326
    .local v0, "templateHelper":Lcom/sonymobile/template/sms/TextTemplateManager;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get5(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManager;->saveAllTextTemplate(Ljava/util/List;)V

    .line 328
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 335
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 332
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method
