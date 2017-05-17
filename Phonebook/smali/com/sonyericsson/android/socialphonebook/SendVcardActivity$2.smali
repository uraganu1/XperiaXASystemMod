.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->alertMessageShow(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

.field final synthetic val$isStartShare:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;
    .param p2, "val$isStartShare"    # Z

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->val$isStartShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    const-string/jumbo v1, "alertMessageShow:onClick"

    const-string/jumbo v2, "start."

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->val$isStartShare:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->finish()V

    .line 273
    return-void
.end method
