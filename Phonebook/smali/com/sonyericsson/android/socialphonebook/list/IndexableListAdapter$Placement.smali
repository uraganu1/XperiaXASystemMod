.class public final Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;
.super Ljava/lang/Object;
.source "IndexableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->position:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->position:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->position:I

    .line 51
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->position:I

    .line 56
    return-void
.end method
