.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyCodeConverter"
.end annotation


# static fields
.field private static final KEYCODE_ASCII:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    .line 1147
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->populateKeycodeAscii()V

    .line 671
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyCodeToAscii(I)I
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    .line 1142
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1143
    .local v0, "asciiCode":I
    return v0
.end method

.method private static populateKeycodeAscii()V
    .locals 5

    .prologue
    const/16 v2, 0x12

    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 1101
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    .line 1102
    .local v0, "codes":Landroid/util/SparseIntArray;
    const/16 v1, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    const/16 v1, 0x1b

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    const/16 v1, 0x3b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    const/16 v1, 0x7b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    const/16 v1, 0x8

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    const/16 v1, 0xc

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    const/16 v1, 0xd

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    const/16 v1, 0x7f

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    const/16 v1, 0x9

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    return-void
.end method
