.class Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;
.super Ljava/lang/Object;
.source "JoinContactActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

.field final synthetic val$adapter:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
    .param p2, "val$adapter"    # Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method
