.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;
.super Ljava/lang/Object;
.source "Note.java"


# instance fields
.field private lang:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->value:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->lang:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->lang:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->value:Ljava/lang/String;

    .line 49
    return-void
.end method
