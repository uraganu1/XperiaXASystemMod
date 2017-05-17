.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;
.super Landroid/os/AsyncTask;
.source "TextTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMarkedItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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
    .line 452
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "booleans"    # [Ljava/lang/Boolean;

    .prologue
    .line 457
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 460
    .local v0, "isMultipleItemsDeleted":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v1

    .line 464
    .local v1, "templateHelper":Lcom/sonymobile/template/sms/TextTemplateManager;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get5(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/template/sms/TextTemplateManager;->saveAllTextTemplate(Ljava/util/List;)V

    .line 466
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "booleans"    # [Ljava/lang/Object;

    .prologue
    .line 455
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "booleans":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isMultipleItemsDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    const v0, 0x7f0b01a1

    .line 480
    .local v0, "toastMessage":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 470
    :cond_0
    return-void

    .line 478
    .end local v0    # "toastMessage":I
    :cond_1
    const v0, 0x7f0b01a2

    .line 477
    .restart local v0    # "toastMessage":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "isMultipleItemsDeleted"    # Ljava/lang/Object;

    .prologue
    .line 470
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "isMultipleItemsDeleted":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
