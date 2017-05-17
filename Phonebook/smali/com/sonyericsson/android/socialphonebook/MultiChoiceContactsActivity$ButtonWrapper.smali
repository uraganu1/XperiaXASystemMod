.class final Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;
.super Ljava/lang/Object;
.source "MultiChoiceContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonWrapper"
.end annotation


# instance fields
.field private mAllButton:Landroid/widget/Button;

.field private mAllItem:Landroid/view/MenuItem;

.field private mDoneButton:Landroid/widget/Button;

.field private mDoneItem:Landroid/view/MenuItem;

.field private mIsUsingTwoPanes:Z

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .line 594
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    .line 584
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)V

    return-void
.end method


# virtual methods
.method public enableAll(Z)V
    .locals 1
    .param p1, "allBtnEnable"    # Z

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 613
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public enableButtons()V
    .locals 2

    .prologue
    const v1, 0x7f0e00b3

    .line 630
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableDone(Z)V
    .locals 1
    .param p1, "doneBtnEnable"    # Z

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 605
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public getIsUsingTowPanes()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    return v0
.end method

.method public setAllTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 597
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setButtonClickListener()V
    .locals 2

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getDoneBtnLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_0
    return-void
.end method
