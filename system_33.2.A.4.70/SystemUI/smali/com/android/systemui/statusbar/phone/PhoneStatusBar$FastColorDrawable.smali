.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastColorDrawable"
.end annotation


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 3792
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3793
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;->mColor:I

    .line 3792
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3798
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3797
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 3811
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 3802
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3815
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3819
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 3806
    return-void
.end method
