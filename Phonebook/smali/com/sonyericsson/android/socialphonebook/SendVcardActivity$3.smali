.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    const-string/jumbo v1, "alertMessageShow:onCancel"

    const-string/jumbo v2, "start."

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->finish()V

    .line 290
    return-void
.end method
