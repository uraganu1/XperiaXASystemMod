.class Lcom/android/contacts/quickcontact/QuickContactActivity$18;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->showCallPlusTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$callPlusTutorialCardView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "val$callPlusTutorialCardView"    # Landroid/view/View;

    .prologue
    .line 2651
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->val$callPlusTutorialCardView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2655
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Unsupported Id"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2657
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->val$callPlusTutorialCardView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2659
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    .line 2658
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setShowQuickContactCallPlusTutorialCard(Landroid/content/Context;Z)V

    .line 2654
    :goto_0
    return-void

    .line 2662
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 2663
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v1

    .line 2662
    invoke-static {v1}, Lcom/sonymobile/holla/CallPlusIntents;->getEnrichedCallingTutorialIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2664
    const/16 v2, 0xd

    .line 2662
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2655
    :pswitch_data_0
    .packed-switch 0x7f0e007f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
