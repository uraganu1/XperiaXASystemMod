.class public Lcom/android/contacts/common/interactions/TouchPointManager;
.super Ljava/lang/Object;
.source "TouchPointManager.java"


# static fields
.field private static sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;


# instance fields
.field private mPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/android/contacts/common/interactions/TouchPointManager;

    invoke-direct {v0}, Lcom/android/contacts/common/interactions/TouchPointManager;-><init>()V

    sput-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;

    return-object v0
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public hasValidPoint()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    iget-object v2, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setPoint(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 31
    return-void
.end method
