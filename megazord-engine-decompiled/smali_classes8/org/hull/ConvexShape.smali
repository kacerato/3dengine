.class public abstract Lorg/hull/ConvexShape;
.super Lorg/hull/CollisionShape;
.source "SourceFile"


# static fields
.field public static final MAX_PREFERRED_PENETRATION_DIRECTIONS:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/hull/CollisionShape;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V
.end method

.method public abstract getAabbSlow(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
.end method

.method public abstract getLocalScaling(Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
.end method

.method public abstract getMargin()F
.end method

.method public abstract getNumPreferredPenetrationDirections()I
.end method

.method public abstract getPreferredPenetrationDirection(ILjavax/vecmath/Vector3f;)V
.end method

.method public abstract localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
.end method

.method public abstract localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
.end method

.method public abstract setLocalScaling(Ljavax/vecmath/Vector3f;)V
.end method

.method public abstract setMargin(F)V
.end method
