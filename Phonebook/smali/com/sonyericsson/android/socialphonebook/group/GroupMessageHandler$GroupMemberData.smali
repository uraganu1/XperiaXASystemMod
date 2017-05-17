.class public Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
.super Ljava/lang/Object;
.source "GroupMessageHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMemberData"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field contactName:Ljava/lang/String;

.field id:J

.field isSuperPrimary:Z

.field label:Ljava/lang/String;

.field mimetype:Ljava/lang/String;

.field number:Ljava/lang/String;

.field rawContactId:J

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->id:J

    .line 105
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    .line 107
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->type:I

    .line 110
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->isSuperPrimary:Z

    .line 101
    return-void
.end method
