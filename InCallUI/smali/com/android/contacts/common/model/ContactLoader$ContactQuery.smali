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
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const/16 v0, 0x46

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "name_raw_contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "display_name_source"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "phonetic_name"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "starred"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "contact_presence"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "contact_status"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "contact_status_ts"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "contact_status_res_package"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "contact_status_label"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "contact_id"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "raw_contact_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "account_name"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "account_type"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "data_set"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "dirty"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "version"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "sourceid"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "sync1"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "sync2"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "sync3"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "sync4"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "deleted"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "data_id"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "data1"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "data2"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "data3"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "data4"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "data5"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "data6"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "data7"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "data8"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "data9"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "data10"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "data11"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "data12"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "data13"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "data14"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "data15"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "data_sync1"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "data_sync2"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "data_sync3"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "data_sync4"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "data_version"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "is_primary"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "is_super_primary"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "group_sourceid"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "mode"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "chat_capability"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "status"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "status_res_package"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "status_icon"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "status_label"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "status_ts"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "custom_ringtone"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "is_user_profile"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "times_used"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "last_time_used"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "send_to_voicemail_vt"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "sim_id"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "indicate_phone_or_sim_contact"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "index_in_sim"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "is_sdn_contact"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "is_additional_number"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 125
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
