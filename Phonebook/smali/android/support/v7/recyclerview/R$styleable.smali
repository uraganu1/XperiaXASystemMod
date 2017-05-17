.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static RecyclerView_android_orientation:I

.field public static RecyclerView_layoutManager:I

.field public static RecyclerView_reverseLayout:I

.field public static RecyclerView_spanCount:I

.field public static RecyclerView_stackFromEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 85
    const v0, 0x10100c4

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    const v3, 0x7f010002

    .line 86
    const v4, 0x7f010003

    .line 84
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    .line 93
    const/4 v0, 0x0

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    .line 117
    const/4 v0, 0x1

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    .line 131
    const/4 v0, 0x3

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    .line 145
    const/4 v0, 0x2

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    .line 159
    const/4 v0, 0x4

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
