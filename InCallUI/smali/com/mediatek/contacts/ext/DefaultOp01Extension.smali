.class public Lcom/mediatek/contacts/ext/DefaultOp01Extension;
.super Ljava/lang/Object;
.source "DefaultOp01Extension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IOp01Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGroupMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 87
    return-void
.end method

.method public addOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 41
    return-void
.end method

.method public areContactAvailable(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "providerStatus"    # Ljava/lang/Integer;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public formatNumber(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0
    .param p1, "defaultNumber"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    return-object p1
.end method

.method public getArrowIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "type"    # I
    .param p2, "callArrowIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    return-object p2
.end method

.method public getMultiChoiceLimitCount(I)I
    .locals 0
    .param p1, "defaultCount"    # I

    .prologue
    .line 32
    return p1
.end method

.method public setViewKeyListener(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "fieldView"    # Landroid/widget/EditText;

    .prologue
    .line 19
    return-void
.end method
