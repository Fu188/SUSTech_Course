.class public interface abstract Lokhttp3/internal/framed/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lokhttp3/Protocol;
.end method

.method public abstract newReader(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;
.end method

.method public abstract newWriter(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;
.end method
