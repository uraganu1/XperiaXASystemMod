.class final Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
.super Ljava/lang/Object;
.source "SomcQSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/SomcQSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Qs"
.end annotation


# instance fields
.field public autoMirror:Z

.field public configQsEnabledId:I

.field public iconId:I

.field public labelId:I

.field public name:Ljava/lang/String;

.field public ownerOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configQsEnabledId"    # I
    .param p3, "iconId"    # I
    .param p4, "labelId"    # I
    .param p5, "autoMirror"    # Z
    .param p6, "isOwnerOnly"    # Z

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    .line 290
    iput p2, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    .line 291
    iput p3, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->iconId:I

    .line 292
    iput p4, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->labelId:I

    .line 293
    iput-boolean p5, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->autoMirror:Z

    .line 294
    iput-boolean p6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    .line 287
    return-void
.end method
