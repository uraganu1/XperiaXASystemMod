.class public Lcom/mediatek/contacts/ext/DefaultContactsCommonPresenceExtension;
.super Ljava/lang/Object;
.source "DefaultContactsCommonPresenceExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IContactsCommonPresenceExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultContactsCommonPresenceExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVideoCallView(JLandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    const-string/jumbo v0, "DefaultContactsCommonPresenceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addVideoCallView contactId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public getWidthWithPadding()I
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "DefaultContactsCommonPresenceExtension"

    const-string/jumbo v1, "getWidthWithPadding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCallCapable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "DefaultContactsCommonPresenceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVideoCallCapable number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "leftBound"    # I
    .param p3, "topBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "bottomBound"    # I

    .prologue
    .line 36
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 30
    return-void
.end method
