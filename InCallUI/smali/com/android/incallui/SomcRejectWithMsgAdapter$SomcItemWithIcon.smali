.class public Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
.super Ljava/lang/Object;
.source "SomcRejectWithMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcRejectWithMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SomcItemWithIcon"
.end annotation


# instance fields
.field protected final mIconResId:I

.field private final mIsCustomMsgItem:Z

.field protected final mIsSubTitle:Z

.field private final mMsg:Ljava/lang/String;

.field private final mOption:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;IZZ)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "isSubTitle"    # Z
    .param p4, "isCustomMsgItem"    # Z

    .prologue
    .line 144
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;IZZI)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "isSubTitle"    # Z
    .param p4, "isCustomMsgItem"    # Z
    .param p5, "option"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mMsg:Ljava/lang/String;

    .line 160
    iput p2, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIconResId:I

    .line 161
    iput-boolean p3, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIsSubTitle:Z

    .line 162
    iput-boolean p4, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIsCustomMsgItem:Z

    .line 163
    iput p5, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mOption:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isSubTitle"    # Z
    .param p3, "isCustomMsgItem"    # Z

    .prologue
    .line 131
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;IZZ)V

    .line 130
    return-void
.end method


# virtual methods
.method public getOption()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mOption:I

    return v0
.end method

.method public isCustomMsgItem()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mIsCustomMsgItem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->mMsg:Ljava/lang/String;

    return-object v0
.end method
