.class public Lcom/sonyericsson/conversations/contact/DisplayName;
.super Ljava/lang/Object;
.source "DisplayName.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mIsFallback:Z

.field private mIsImDisplayName:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mDisplayName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mIsFallback:Z

    .line 30
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mDisplayName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mIsFallback:Z

    goto :goto_0
.end method

.method static fromContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/sonyericsson/conversations/contact/DisplayName;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v0, "displayName":Lcom/sonyericsson/conversations/contact/DisplayName;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/contact/DisplayName;->mIsImDisplayName:Z

    .line 27
    return-object v0
.end method

.method static fromImDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;
    .locals 2
    .param p0, "imDisplayName"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/sonyericsson/conversations/contact/DisplayName;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, "displayName":Lcom/sonyericsson/conversations/contact/DisplayName;
    if-eqz p0, :cond_0

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/contact/DisplayName;->mIsImDisplayName:Z

    .line 21
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isImDisplayName()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mIsImDisplayName:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/DisplayName;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
