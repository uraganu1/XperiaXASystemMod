.class public final enum Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
.super Ljava/lang/Enum;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_FAILED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_FAILED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_FAILED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_FAILED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_INV_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_INV_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_PROGRESS_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_PROGRESS_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_PROGRESS_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_PROGRESS_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_RECEIVED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_RECEIVED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_RECEIVED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum FILE_MESSAGE_RECEIVED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_BRIEF_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_BRIEF_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_DOWNLOADING:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum MMS_MESSAGE_NOTIFICATION:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum TEXT_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

.field public static final enum TEXT_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;


# instance fields
.field private final mBubbleLayout:I

.field private final mContentLayout:I

.field private mIsStackable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 103
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "SYSTEM_MESSAGE"

    const/4 v2, 0x0

    const v3, 0x7f030054

    const v4, 0x7f030060

    .line 104
    const/4 v5, 0x1

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "TEXT_MESSAGE_MO"

    const/4 v2, 0x1

    const v3, 0x7f030053

    const v4, 0x7f030061

    .line 107
    const/4 v5, 0x1

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 108
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "TEXT_MESSAGE_MT"

    const/4 v2, 0x2

    const v3, 0x7f030052

    const v4, 0x7f030061

    .line 109
    const/4 v5, 0x1

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 111
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_NOTIFICATION"

    const/4 v2, 0x3

    const v3, 0x7f030052

    .line 112
    const v4, 0x7f03005d

    const/4 v5, 0x1

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_NOTIFICATION:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 114
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_DOWNLOADING"

    const/4 v2, 0x4

    const v3, 0x7f030052

    .line 115
    const v4, 0x7f03005c

    const/4 v5, 0x1

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_DOWNLOADING:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 117
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_BRIEF_MO"

    const/4 v2, 0x5

    const v3, 0x7f030053

    .line 118
    const v4, 0x7f03005f

    const/4 v5, 0x1

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 119
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_BRIEF_MT"

    const/4 v2, 0x6

    const v3, 0x7f030052

    .line 120
    const v4, 0x7f03005f

    const/4 v5, 0x1

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 122
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_MO"

    const/4 v2, 0x7

    const v3, 0x7f030053

    .line 123
    const v4, 0x7f030056

    const/4 v5, 0x1

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 124
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_MT"

    const/16 v2, 0x8

    const v3, 0x7f030052

    .line 125
    const v4, 0x7f030055

    const/4 v5, 0x1

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 126
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_BIG_MO"

    const/16 v2, 0x9

    const v3, 0x7f030053

    .line 127
    const v4, 0x7f03005e

    const/4 v5, 0x1

    .line 126
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 128
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "MMS_MESSAGE_BIG_MT"

    const/16 v2, 0xa

    const v3, 0x7f030052

    .line 129
    const v4, 0x7f03005e

    const/4 v5, 0x1

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 131
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_INV_MT"

    const/16 v2, 0xb

    const v3, 0x7f030052

    .line 132
    const v4, 0x7f030058

    const/4 v5, 0x0

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 133
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_INV_BIG_MT"

    const/16 v2, 0xc

    const v3, 0x7f030052

    .line 134
    const v4, 0x7f030065

    const/4 v5, 0x0

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 136
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_PROGRESS_MO"

    const/16 v2, 0xd

    const v3, 0x7f030053

    .line 137
    const v4, 0x7f030059

    const/4 v5, 0x0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 138
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_PROGRESS_MT"

    const/16 v2, 0xe

    const v3, 0x7f030052

    .line 139
    const v4, 0x7f030059

    const/4 v5, 0x0

    .line 138
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 140
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_PROGRESS_BIG_MO"

    const/16 v2, 0xf

    const v3, 0x7f030053

    .line 141
    const v4, 0x7f030066

    const/4 v5, 0x0

    .line 140
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 142
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_PROGRESS_BIG_MT"

    const/16 v2, 0x10

    const v3, 0x7f030052

    .line 143
    const v4, 0x7f030066

    const/4 v5, 0x0

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 145
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_RECEIVED_MO"

    const/16 v2, 0x11

    const v3, 0x7f030053

    .line 146
    const v4, 0x7f03005a

    const/4 v5, 0x0

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 147
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_RECEIVED_MT"

    const/16 v2, 0x12

    const v3, 0x7f030052

    .line 148
    const v4, 0x7f03005a

    const/4 v5, 0x0

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 149
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_RECEIVED_BIG_MO"

    const/16 v2, 0x13

    const v3, 0x7f030053

    .line 150
    const v4, 0x7f030067

    const/4 v5, 0x0

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 151
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_RECEIVED_BIG_MT"

    const/16 v2, 0x14

    const v3, 0x7f030052

    .line 152
    const v4, 0x7f030067

    const/4 v5, 0x0

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 154
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_FAILED_MO"

    const/16 v2, 0x15

    const v3, 0x7f030053

    .line 155
    const v4, 0x7f030057

    const/4 v5, 0x0

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 156
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_FAILED_MT"

    const/16 v2, 0x16

    const v3, 0x7f030052

    .line 157
    const v4, 0x7f030057

    const/4 v5, 0x0

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 158
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_FAILED_BIG_MO"

    const/16 v2, 0x17

    const v3, 0x7f030053

    .line 159
    const v4, 0x7f030064

    const/4 v5, 0x0

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 160
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const-string/jumbo v1, "FILE_MESSAGE_FAILED_BIG_MT"

    const/16 v2, 0x18

    const v3, 0x7f030052

    .line 161
    const v4, 0x7f030064

    const/4 v5, 0x0

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 102
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_NOTIFICATION:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_DOWNLOADING:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->$VALUES:[Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "bubbleLayout"    # I
    .param p4, "contentLayout"    # I
    .param p5, "isStackable"    # Z

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mBubbleLayout:I

    .line 171
    iput p4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mContentLayout:I

    .line 172
    iput-boolean p5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mIsStackable:Z

    .line 169
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->$VALUES:[Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v0
.end method


# virtual methods
.method public getBubbleLayout()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mBubbleLayout:I

    return v0
.end method

.method public getContentLayout()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mContentLayout:I

    return v0
.end method

.method public isStackable()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->mIsStackable:Z

    return v0
.end method
