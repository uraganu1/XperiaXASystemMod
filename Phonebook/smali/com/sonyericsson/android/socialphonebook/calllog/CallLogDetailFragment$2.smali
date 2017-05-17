.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;
.super Ljava/lang/Object;
.source "CallLogDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getCachedCapabilitiesAndShowPrepareCallButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

.field final synthetic val$hasCapabilities:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "val$hasCapabilities"    # Z

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;->val$hasCapabilities:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1653
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;->val$hasCapabilities:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1652
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1651
    return-void

    .line 1653
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
