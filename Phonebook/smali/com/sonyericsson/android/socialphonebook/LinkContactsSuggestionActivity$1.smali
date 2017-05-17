.class Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$1;
.super Ljava/lang/Object;
.source "LinkContactsSuggestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 180
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method
