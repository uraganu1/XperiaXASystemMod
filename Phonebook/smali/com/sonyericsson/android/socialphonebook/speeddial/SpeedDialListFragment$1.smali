.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;
.super Ljava/lang/Object;
.source "SpeedDialListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    .local v0, "position":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;I)I

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncDeleteEntryByPosition(I)V

    .line 120
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
