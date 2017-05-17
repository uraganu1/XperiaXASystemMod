.class final Lcom/sonyericsson/conversations/model/Participant$1;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "Participant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Lcom/sonyericsson/conversations/model/Participant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Lcom/sonyericsson/conversations/model/Participant;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 100
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->refreshProfilesIfNeeded()V

    .line 101
    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant$1;->onBackground()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    return-object v0
.end method
