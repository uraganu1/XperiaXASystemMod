.class public Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;
.super Landroid/app/FragmentTransaction;
.source "FragmentTransactionWrapper.java"


# instance fields
.field private mFragmentTransaction:Landroid/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "fragmentTransaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    .line 19
    return-void
.end method

.method private verifyFragmentNotNull(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Fragment sent to fragment transaction is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, " does not support this method."

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    return v0
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isAddToBackStackAllowed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTransition(II)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "i1"    # I
    .param p2, "i2"    # I

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string/jumbo v2, " does not support this method."

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "styleRes"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->setTransitionStyle(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->verifyFragmentNotNull(Landroid/app/Fragment;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method
