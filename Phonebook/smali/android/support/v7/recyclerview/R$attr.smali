.class public final Landroid/support/v7/recyclerview/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static layoutManager:I

.field public static reverseLayout:I

.field public static spanCount:I

.field public static stackFromEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/high16 v0, 0x7f010000

    sput v0, Landroid/support/v7/recyclerview/R$attr;->layoutManager:I

    .line 36
    const v0, 0x7f010002

    sput v0, Landroid/support/v7/recyclerview/R$attr;->reverseLayout:I

    .line 44
    const v0, 0x7f010001

    sput v0, Landroid/support/v7/recyclerview/R$attr;->spanCount:I

    .line 52
    const v0, 0x7f010003

    sput v0, Landroid/support/v7/recyclerview/R$attr;->stackFromEnd:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
