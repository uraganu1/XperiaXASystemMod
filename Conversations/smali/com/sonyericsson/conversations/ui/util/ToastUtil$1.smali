.class final Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$text"    # Ljava/lang/CharSequence;
    .param p3, "val$duration"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$text:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/util/ToastUtil$1;->val$duration:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->createTopToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method
