.class public final enum Lcom/android/incallui/VideoCallFragment$VideoCallState;
.super Ljava/lang/Enum;
.source "VideoCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/VideoCallFragment$VideoCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum DIALING:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCALL_RX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCALL_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCOMING_RX_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum INCOMING_VT_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum REQUEST_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum REQUEST_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field public static final enum SECOND_INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 181
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 182
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "DIALING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 183
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->DIALING:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 184
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "REQUEST_VT"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 185
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 186
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "REQUEST_TX"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 187
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 188
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCALL_VT"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 189
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 190
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCALL_TX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 191
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 192
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCALL_RX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 193
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_RX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 194
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCOMING_VT_REQUEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 195
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 196
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCOMING_RX_REQUEST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_RX_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 198
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "INCOMING_VT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 199
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 200
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const-string/jumbo v1, "SECOND_INCOMING_VT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallState;-><init>(Ljava/lang/String;I)V

    .line 201
    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->SECOND_INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 179
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/incallui/VideoCallFragment$VideoCallState;

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->DIALING:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_RX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_RX_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->SECOND_INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->$VALUES:[Lcom/android/incallui/VideoCallFragment$VideoCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/VideoCallFragment$VideoCallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/VideoCallFragment$VideoCallState;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->$VALUES:[Lcom/android/incallui/VideoCallFragment$VideoCallState;

    return-object v0
.end method
