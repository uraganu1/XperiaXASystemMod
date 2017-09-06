.class public Lcom/mediatek/contacts/ext/DefaultCtExtension;
.super Ljava/lang/Object;
.source "DefaultCtExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/ICtExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultCtExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoDrawableBySub(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "subId"    # I
    .param p3, "photoDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15
    const-string/jumbo v0, "DefaultCtExtension"

    const-string/jumbo v1, "getPhotoDrawableBySub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-object p3
.end method

.method public loadSimCardIconBitmap(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    const-string/jumbo v0, "DefaultCtExtension"

    const-string/jumbo v1, "loadSimCardIconBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public showAlwaysAskIndicate(I)I
    .locals 0
    .param p1, "defaultValue"    # I

    .prologue
    .line 27
    return p1
.end method
