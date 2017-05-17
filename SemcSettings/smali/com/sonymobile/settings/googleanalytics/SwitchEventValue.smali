.class public Lcom/sonymobile/settings/googleanalytics/SwitchEventValue;
.super Ljava/lang/Object;
.source "SwitchEventValue.java"

# interfaces
.implements Lcom/sonymobile/settings/googleanalytics/EventValue;


# instance fields
.field private final mIsEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEventValue;->mIsEnabled:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEventValue;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "enabled"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    return-wide v0
.end method
