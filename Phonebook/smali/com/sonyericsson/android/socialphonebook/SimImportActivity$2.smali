.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$2;
.super Ljava/lang/Object;
.source "SimImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "clicked unexpected view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->onDoneBtnClicked()V

    .line 525
    return-void

    .line 526
    :pswitch_data_0
    .packed-switch 0x7f0e020c
        :pswitch_0
    .end packed-switch
.end method
