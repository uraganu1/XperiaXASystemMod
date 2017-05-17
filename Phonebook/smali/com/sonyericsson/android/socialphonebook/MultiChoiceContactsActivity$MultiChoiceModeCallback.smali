.class Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "MultiChoiceContactsActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 566
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    const/4 v0, 0x0

    return v0

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->toggleCheck()V

    .line 569
    return v1

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onDoneBtnClicked()V

    .line 572
    return v1

    .line 566
    :pswitch_data_0
    .packed-switch 0x7f0e0262
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 547
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 548
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 549
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f11000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1, p2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/view/Menu;)Landroid/view/Menu;

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0e0262

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->-set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0e0263

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->-set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 553
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onBackPressed()V

    .line 579
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method
