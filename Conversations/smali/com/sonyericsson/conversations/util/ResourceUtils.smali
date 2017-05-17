.class public Lcom/sonyericsson/conversations/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 14
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 15
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 16
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method
