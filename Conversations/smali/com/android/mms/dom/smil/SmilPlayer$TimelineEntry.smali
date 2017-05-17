.class final Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
.super Ljava/lang/Object;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimelineEntry"
.end annotation


# instance fields
.field private final mAction:I

.field private final mElement:Lorg/w3c/dom/smil/ElementTime;

.field private final mOffsetTime:D


# direct methods
.method static synthetic -get0(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method

.method public constructor <init>(DLorg/w3c/dom/smil/ElementTime;I)V
    .locals 1
    .param p1, "offsetTime"    # D
    .param p3, "element"    # Lorg/w3c/dom/smil/ElementTime;
    .param p4, "action"    # I

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-wide p1, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    .line 871
    iput-object p3, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    .line 872
    iput p4, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    .line 869
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    return v0
.end method

.method public getElement()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    return-object v0
.end method

.method public getOffsetTime()D
    .locals 2

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method
