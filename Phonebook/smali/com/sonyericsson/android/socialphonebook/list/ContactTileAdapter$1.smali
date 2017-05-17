.class Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "deleteButton"    # Landroid/view/View;

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 454
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 452
    return-void
.end method
