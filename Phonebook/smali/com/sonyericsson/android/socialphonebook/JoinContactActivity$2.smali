.class Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$2;
.super Ljava/lang/Object;
.source "JoinContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 242
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method
