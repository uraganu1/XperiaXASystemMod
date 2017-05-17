.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->initializeCustomMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/content/Context;)V

    .line 884
    return-void
.end method
