.class public Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownMenu"
.end annotation


# instance fields
.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "menuId"    # I
    .param p4, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mTextView:Landroid/widget/TextView;

    .line 40
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public disMissPopupMenu()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 59
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method