.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$2;
.super Ljava/lang/Object;
.source "FindAndLinkProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->finish()V

    .line 930
    return-void
.end method
