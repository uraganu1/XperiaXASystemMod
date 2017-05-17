.class public Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
.super Ljava/lang/Exception;
.source "MediaContentRestrictionException.java"


# static fields
.field private static final serialVersionUID:J = 0x47936a4eef58119L


# instance fields
.field private final mContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V
    .locals 0
    .param p1, "contentStatus"    # Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->mContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 15
    return-void
.end method


# virtual methods
.method public getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->mContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method
