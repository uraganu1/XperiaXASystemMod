.class public abstract Lcom/sonymobile/rcs/provider/base/AbstractContentValues;
.super Ljava/lang/Object;
.source "AbstractContentValues.java"


# instance fields
.field protected mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractContentValues;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public values()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractContentValues;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method
