.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 558
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 551
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isDialpadMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    goto :goto_0
.end method
