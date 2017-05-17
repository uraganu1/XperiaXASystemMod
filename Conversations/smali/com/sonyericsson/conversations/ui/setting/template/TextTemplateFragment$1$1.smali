.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

.field final synthetic val$markedTextTemplateIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    .prologue
    .line 379
    .local p2, "val$markedTextTemplateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->val$markedTextTemplateIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get5(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->val$markedTextTemplateIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->removeTextTemplates(Ljava/util/ArrayList;)V

    .line 382
    new-instance v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;)V

    new-array v3, v0, [Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;->val$markedTextTemplateIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void

    :cond_0
    move v0, v1

    .line 382
    goto :goto_0
.end method
