.class public Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mMenus:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method public addDropDownMenu(Landroid/widget/TextView;I)Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "menuId"    # I

    .prologue
    .line 76
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 77
    .local v0, "menu":Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method public disMissPopupMenu()V
    .locals 3

    .prologue
    .line 95
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    .line 96
    .local v0, "menu":Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->disMissPopupMenu()V

    goto :goto_0

    .line 94
    .end local v0    # "menu":Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    :cond_0
    return-void
.end method

.method public findMenuItem(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "item":Landroid/view/MenuItem;
    .local v2, "menu$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    .line 88
    .local v1, "menu":Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 89
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    return-object v0

    .line 91
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "menu":Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;
    :cond_1
    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 81
    return-void
.end method
