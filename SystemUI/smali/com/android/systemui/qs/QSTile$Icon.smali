.class public abstract Lcom/android/systemui/qs/QSTile$Icon;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Icon"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 387
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 392
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const-class v0, Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method
