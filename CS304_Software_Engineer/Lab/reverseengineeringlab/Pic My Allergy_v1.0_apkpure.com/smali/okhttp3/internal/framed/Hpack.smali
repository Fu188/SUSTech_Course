.class final Lokhttp3/internal/framed/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/Hpack$Writer;,
        Lokhttp3/internal/framed/Hpack$Reader;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3d

    .line 47
    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v3, "GET"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v3, "POST"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v3, "/"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v3, "/index.html"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v3, "http"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v3, "https"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "200"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "204"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "206"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "304"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "400"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "404"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    sget-object v2, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "500"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "accept-charset"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "accept-encoding"

    const-string v3, "gzip, deflate"

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "accept-language"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "accept-ranges"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "accept"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "access-control-allow-origin"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "age"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "allow"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "authorization"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "cache-control"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-disposition"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-encoding"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-language"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-length"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-location"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-range"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "content-type"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "cookie"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "date"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "etag"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "expect"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "expires"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "from"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "host"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "if-match"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "if-modified-since"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "if-none-match"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "if-range"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "if-unmodified-since"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "last-modified"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "link"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "location"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "max-forwards"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "proxy-authenticate"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "proxy-authorization"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "range"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "referer"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "refresh"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "retry-after"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "server"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "set-cookie"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "strict-transport-security"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "transfer-encoding"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "user-agent"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "vary"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "via"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lokhttp3/internal/framed/Header;

    const-string v2, "www-authenticate"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    .line 350
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lokhttp3/internal/framed/Header;
    .locals 1

    .line 41
    sget-object v0, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    return-object v0
.end method

.method static synthetic access$100(Lokio/ByteString;)Lokio/ByteString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lokhttp3/internal/framed/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 41
    sget-object v0, Lokhttp3/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method private static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 550
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 552
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 354
    :goto_0
    sget-object v2, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 355
    sget-object v2, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget-object v2, v2, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    sget-object v2, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget-object v2, v2, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
