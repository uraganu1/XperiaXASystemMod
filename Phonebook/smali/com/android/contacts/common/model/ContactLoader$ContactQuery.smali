.class Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xf

.field public static final ACCOUNT_TYPE:I = 0x10

.field public static final ACCOUNT_TYPE_AND_DATA_SET:I = 0x12

.field public static final ALT_DISPLAY_NAME:I = 0x4

.field public static final CHAT_CAPABILITY:I = 0x36

.field static final COLUMNS:[Ljava/lang/String;

.field public static final CONTACT_ID:I = 0xd

.field public static final CONTACT_PRESENCE:I = 0x8

.field public static final CONTACT_STATUS:I = 0x9

.field public static final CONTACT_STATUS_LABEL:I = 0xc

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0xb

.field public static final CONTACT_STATUS_TIMESTAMP:I = 0xa

.field public static final CUSTOM_RINGTONE:I = 0x3e

.field public static final DATA1:I = 0x1c

.field public static final DATA10:I = 0x25

.field public static final DATA11:I = 0x26

.field public static final DATA12:I = 0x27

.field public static final DATA13:I = 0x28

.field public static final DATA14:I = 0x29

.field public static final DATA15:I = 0x2a

.field public static final DATA2:I = 0x1d

.field public static final DATA3:I = 0x1e

.field public static final DATA4:I = 0x1f

.field public static final DATA5:I = 0x20

.field public static final DATA6:I = 0x21

.field public static final DATA7:I = 0x22

.field public static final DATA8:I = 0x23

.field public static final DATA9:I = 0x24

.field public static final DATA_ID:I = 0x1b

.field public static final DATA_SET:I = 0x11

.field public static final DATA_SYNC1:I = 0x2b

.field public static final DATA_SYNC2:I = 0x2c

.field public static final DATA_SYNC3:I = 0x2d

.field public static final DATA_SYNC4:I = 0x2e

.field public static final DATA_VERSION:I = 0x2f

.field public static final DELETED:I = 0x1a

.field public static final DIRTY:I = 0x13

.field public static final DISPLAY_NAME:I = 0x3

.field public static final DISPLAY_NAME_SOURCE:I = 0x1

.field public static final GROUP_SOURCE_ID:I = 0x34

.field public static final IN_VISIBLE_GROUP:I = 0x40

.field public static final IS_PRIMARY:I = 0x30

.field public static final IS_SUPERPRIMARY:I = 0x31

.field public static final IS_USER_PROFILE:I = 0x3f

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x32

.field public static final NAME_RAW_CONTACT_ID:I = 0x0

.field public static final PHONETIC_NAME:I = 0x5

.field public static final PHOTO_FILE_ID:I = 0x41

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x3c

.field public static final PRESENCE:I = 0x35

.field public static final RAW_CONTACT_ID:I = 0xe

.field public static final RES_PACKAGE:I = 0x33

.field public static final SEND_TO_VOICEMAIL:I = 0x3d

.field public static final SOURCE_ID:I = 0x15

.field public static final STARRED:I = 0x7

.field public static final STATUS:I = 0x37

.field public static final STATUS_ICON:I = 0x39

.field public static final STATUS_LABEL:I = 0x3a

.field public static final STATUS_RES_PACKAGE:I = 0x38

.field public static final STATUS_TIMESTAMP:I = 0x3b

.field public static final SYNC1:I = 0x16

.field public static final SYNC2:I = 0x17

.field public static final SYNC3:I = 0x18

.field public static final SYNC4:I = 0x19

.field public static final VERSION:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const/16 v0, 0x42

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "name_raw_contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "display_name_source"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "phonetic_name"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "starred"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "contact_presence"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "contact_status"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "contact_status_ts"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "contact_status_res_package"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "contact_status_label"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "contact_id"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "raw_contact_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "account_name"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "account_type"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "data_set"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "account_type_and_data_set"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "dirty"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "version"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "sourceid"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "sync1"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "sync2"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "sync3"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "sync4"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "deleted"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "data_id"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "data1"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "data2"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "data3"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "data4"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "data5"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "data6"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "data7"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "data8"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "data9"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "data10"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "data11"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "data12"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "data13"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "data14"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "data15"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "data_sync1"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "data_sync2"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "data_sync3"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "data_sync4"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "data_version"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "is_primary"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "is_super_primary"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "res_package"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "group_sourceid"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "mode"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "chat_capability"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "status"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "status_res_package"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "status_icon"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "status_label"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "status_ts"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "custom_ringtone"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "is_user_profile"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "in_visible_group"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "photo_file_id"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 140
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 139
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
