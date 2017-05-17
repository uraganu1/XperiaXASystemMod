.class public abstract Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
.super Ljava/lang/Object;
.source "CursorRow.java"


# static fields
.field public static final SEPARATOR_ID:J = -0x1L


# instance fields
.field private mId:J

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->mPosition:I

    .line 79
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->mId:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->mPosition:I

    return v0
.end method

.method public abstract getSortString()Ljava/lang/String;
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->mId:J

    .line 49
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "aPosition"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->mPosition:I

    .line 40
    return-void
.end method

.method public abstract setSortString(Ljava/lang/String;)V
.end method
