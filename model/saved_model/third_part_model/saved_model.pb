??
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
0color_transform_network/decoder/conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20color_transform_network/decoder/conv2d_45/kernel
?
Dcolor_transform_network/decoder/conv2d_45/kernel/Read/ReadVariableOpReadVariableOp0color_transform_network/decoder/conv2d_45/kernel*(
_output_shapes
:??*
dtype0
?
.color_transform_network/decoder/conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.color_transform_network/decoder/conv2d_45/bias
?
Bcolor_transform_network/decoder/conv2d_45/bias/Read/ReadVariableOpReadVariableOp.color_transform_network/decoder/conv2d_45/bias*
_output_shapes	
:?*
dtype0
?
0color_transform_network/decoder/conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20color_transform_network/decoder/conv2d_46/kernel
?
Dcolor_transform_network/decoder/conv2d_46/kernel/Read/ReadVariableOpReadVariableOp0color_transform_network/decoder/conv2d_46/kernel*(
_output_shapes
:??*
dtype0
?
.color_transform_network/decoder/conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.color_transform_network/decoder/conv2d_46/bias
?
Bcolor_transform_network/decoder/conv2d_46/bias/Read/ReadVariableOpReadVariableOp.color_transform_network/decoder/conv2d_46/bias*
_output_shapes	
:?*
dtype0
?
0color_transform_network/decoder/conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*A
shared_name20color_transform_network/decoder/conv2d_47/kernel
?
Dcolor_transform_network/decoder/conv2d_47/kernel/Read/ReadVariableOpReadVariableOp0color_transform_network/decoder/conv2d_47/kernel*'
_output_shapes
:?@*
dtype0
?
.color_transform_network/decoder/conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.color_transform_network/decoder/conv2d_47/bias
?
Bcolor_transform_network/decoder/conv2d_47/bias/Read/ReadVariableOpReadVariableOp.color_transform_network/decoder/conv2d_47/bias*
_output_shapes
:@*
dtype0
?
0color_transform_network/decoder/conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20color_transform_network/decoder/conv2d_48/kernel
?
Dcolor_transform_network/decoder/conv2d_48/kernel/Read/ReadVariableOpReadVariableOp0color_transform_network/decoder/conv2d_48/kernel*&
_output_shapes
:@*
dtype0
?
.color_transform_network/decoder/conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.color_transform_network/decoder/conv2d_48/bias
?
Bcolor_transform_network/decoder/conv2d_48/bias/Read/ReadVariableOpReadVariableOp.color_transform_network/decoder/conv2d_48/bias*
_output_shapes
:*
dtype0
?
>color_transform_network/decoder/instance_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>color_transform_network/decoder/instance_normalization_9/gamma
?
Rcolor_transform_network/decoder/instance_normalization_9/gamma/Read/ReadVariableOpReadVariableOp>color_transform_network/decoder/instance_normalization_9/gamma*
_output_shapes	
:?*
dtype0
?
=color_transform_network/decoder/instance_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=color_transform_network/decoder/instance_normalization_9/beta
?
Qcolor_transform_network/decoder/instance_normalization_9/beta/Read/ReadVariableOpReadVariableOp=color_transform_network/decoder/instance_normalization_9/beta*
_output_shapes	
:?*
dtype0
?
?color_transform_network/decoder/instance_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?color_transform_network/decoder/instance_normalization_10/gamma
?
Scolor_transform_network/decoder/instance_normalization_10/gamma/Read/ReadVariableOpReadVariableOp?color_transform_network/decoder/instance_normalization_10/gamma*
_output_shapes	
:?*
dtype0
?
>color_transform_network/decoder/instance_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>color_transform_network/decoder/instance_normalization_10/beta
?
Rcolor_transform_network/decoder/instance_normalization_10/beta/Read/ReadVariableOpReadVariableOp>color_transform_network/decoder/instance_normalization_10/beta*
_output_shapes	
:?*
dtype0
?
?color_transform_network/decoder/instance_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?color_transform_network/decoder/instance_normalization_11/gamma
?
Scolor_transform_network/decoder/instance_normalization_11/gamma/Read/ReadVariableOpReadVariableOp?color_transform_network/decoder/instance_normalization_11/gamma*
_output_shapes
:@*
dtype0
?
>color_transform_network/decoder/instance_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*O
shared_name@>color_transform_network/decoder/instance_normalization_11/beta
?
Rcolor_transform_network/decoder/instance_normalization_11/beta/Read/ReadVariableOpReadVariableOp>color_transform_network/decoder/instance_normalization_11/beta*
_output_shapes
:@*
dtype0

NoOpNoOp
?-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer-0
layer_with_weights-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
?

conv_1

	conv_2


conv_3

conv_4

norm_1

norm_2

norm_3

upsampling

activation
	variables
regularization_losses
trainable_variables
	keras_api
f
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
 
f
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
?
	variables
#layer_regularization_losses

$layers
regularization_losses
trainable_variables
%non_trainable_variables
&metrics
'layer_metrics
 
h

kernel
bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
h

kernel
bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
h

kernel
bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
h

kernel
bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
g
	gamma
beta
8	variables
9regularization_losses
:trainable_variables
;	keras_api
g
	gamma
 beta
<	variables
=regularization_losses
>trainable_variables
?	keras_api
g
	!gamma
"beta
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
R
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
R
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
f
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
 
f
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
?
	variables
Llayer_regularization_losses

Mlayers
regularization_losses
trainable_variables
Nnon_trainable_variables
Ometrics
Player_metrics
lj
VARIABLE_VALUE0color_transform_network/decoder/conv2d_45/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.color_transform_network/decoder/conv2d_45/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0color_transform_network/decoder/conv2d_46/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.color_transform_network/decoder/conv2d_46/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0color_transform_network/decoder/conv2d_47/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.color_transform_network/decoder/conv2d_47/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0color_transform_network/decoder/conv2d_48/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.color_transform_network/decoder/conv2d_48/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>color_transform_network/decoder/instance_normalization_9/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=color_transform_network/decoder/instance_normalization_9/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE?color_transform_network/decoder/instance_normalization_10/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE>color_transform_network/decoder/instance_normalization_10/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE?color_transform_network/decoder/instance_normalization_11/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE>color_transform_network/decoder/instance_normalization_11/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 
 
 

0
1
 

0
1
?
(	variables
Qlayer_regularization_losses

Rlayers
)regularization_losses
*trainable_variables
Snon_trainable_variables
Tmetrics
Ulayer_metrics

0
1
 

0
1
?
,	variables
Vlayer_regularization_losses

Wlayers
-regularization_losses
.trainable_variables
Xnon_trainable_variables
Ymetrics
Zlayer_metrics

0
1
 

0
1
?
0	variables
[layer_regularization_losses

\layers
1regularization_losses
2trainable_variables
]non_trainable_variables
^metrics
_layer_metrics

0
1
 

0
1
?
4	variables
`layer_regularization_losses

alayers
5regularization_losses
6trainable_variables
bnon_trainable_variables
cmetrics
dlayer_metrics

0
1
 

0
1
?
8	variables
elayer_regularization_losses

flayers
9regularization_losses
:trainable_variables
gnon_trainable_variables
hmetrics
ilayer_metrics

0
 1
 

0
 1
?
<	variables
jlayer_regularization_losses

klayers
=regularization_losses
>trainable_variables
lnon_trainable_variables
mmetrics
nlayer_metrics

!0
"1
 

!0
"1
?
@	variables
olayer_regularization_losses

players
Aregularization_losses
Btrainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
 
 
 
?
D	variables
tlayer_regularization_losses

ulayers
Eregularization_losses
Ftrainable_variables
vnon_trainable_variables
wmetrics
xlayer_metrics
 
 
 
?
H	variables
ylayer_regularization_losses

zlayers
Iregularization_losses
Jtrainable_variables
{non_trainable_variables
|metrics
}layer_metrics
 
?
0
	1

2
3
4
5
6
7
8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_12Placeholder*0
_output_shapes
:?????????@@?*
dtype0*%
shape:?????????@@?
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_120color_transform_network/decoder/conv2d_45/kernel.color_transform_network/decoder/conv2d_45/bias>color_transform_network/decoder/instance_normalization_9/gamma=color_transform_network/decoder/instance_normalization_9/beta0color_transform_network/decoder/conv2d_46/kernel.color_transform_network/decoder/conv2d_46/bias?color_transform_network/decoder/instance_normalization_10/gamma>color_transform_network/decoder/instance_normalization_10/beta0color_transform_network/decoder/conv2d_47/kernel.color_transform_network/decoder/conv2d_47/bias?color_transform_network/decoder/instance_normalization_11/gamma>color_transform_network/decoder/instance_normalization_11/beta0color_transform_network/decoder/conv2d_48/kernel.color_transform_network/decoder/conv2d_48/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3818498
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameDcolor_transform_network/decoder/conv2d_45/kernel/Read/ReadVariableOpBcolor_transform_network/decoder/conv2d_45/bias/Read/ReadVariableOpDcolor_transform_network/decoder/conv2d_46/kernel/Read/ReadVariableOpBcolor_transform_network/decoder/conv2d_46/bias/Read/ReadVariableOpDcolor_transform_network/decoder/conv2d_47/kernel/Read/ReadVariableOpBcolor_transform_network/decoder/conv2d_47/bias/Read/ReadVariableOpDcolor_transform_network/decoder/conv2d_48/kernel/Read/ReadVariableOpBcolor_transform_network/decoder/conv2d_48/bias/Read/ReadVariableOpRcolor_transform_network/decoder/instance_normalization_9/gamma/Read/ReadVariableOpQcolor_transform_network/decoder/instance_normalization_9/beta/Read/ReadVariableOpScolor_transform_network/decoder/instance_normalization_10/gamma/Read/ReadVariableOpRcolor_transform_network/decoder/instance_normalization_10/beta/Read/ReadVariableOpScolor_transform_network/decoder/instance_normalization_11/gamma/Read/ReadVariableOpRcolor_transform_network/decoder/instance_normalization_11/beta/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_3819066
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename0color_transform_network/decoder/conv2d_45/kernel.color_transform_network/decoder/conv2d_45/bias0color_transform_network/decoder/conv2d_46/kernel.color_transform_network/decoder/conv2d_46/bias0color_transform_network/decoder/conv2d_47/kernel.color_transform_network/decoder/conv2d_47/bias0color_transform_network/decoder/conv2d_48/kernel.color_transform_network/decoder/conv2d_48/bias>color_transform_network/decoder/instance_normalization_9/gamma=color_transform_network/decoder/instance_normalization_9/beta?color_transform_network/decoder/instance_normalization_10/gamma>color_transform_network/decoder/instance_normalization_10/beta?color_transform_network/decoder/instance_normalization_11/gamma>color_transform_network/decoder/instance_normalization_11/beta*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_3819118??
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818194

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818432

inputs
decoder_3818402
decoder_3818404
decoder_3818406
decoder_3818408
decoder_3818410
decoder_3818412
decoder_3818414
decoder_3818416
decoder_3818418
decoder_3818420
decoder_3818422
decoder_3818424
decoder_3818426
decoder_3818428
identity??decoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_3818402decoder_3818404decoder_3818406decoder_3818408decoder_3818410decoder_3818412decoder_3818414decoder_3818416decoder_3818418decoder_3818420decoder_3818422decoder_3818424decoder_3818426decoder_3818428*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_38182292!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?

?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_3818126

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818107

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????@@?2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_3818904

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????@@?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
?
+__inference_conv2d_47_layer_call_fn_3818951

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_38181692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_3818942

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818976

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818366

inputs
decoder_3818336
decoder_3818338
decoder_3818340
decoder_3818342
decoder_3818344
decoder_3818346
decoder_3818348
decoder_3818350
decoder_3818352
decoder_3818354
decoder_3818356
decoder_3818358
decoder_3818360
decoder_3818362
identity??decoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_3818336decoder_3818338decoder_3818340decoder_3818342decoder_3818344decoder_3818346decoder_3818348decoder_3818350decoder_3818352decoder_3818354decoder_3818356decoder_3818358decoder_3818360decoder_3818362*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_38182292!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?0
?
V__inference_instance_normalization_10_layer_call_and_return_conditional_losses_3817984

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:??????????2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
moments/variance?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   2
Reshape/shape?
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:?2	
Reshape?
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   2
Reshape_1/shape?
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/Rsqrt?
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_2?
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
:__inference_instance_normalization_9_layer_call_fn_3817940

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_instance_normalization_9_layer_call_and_return_conditional_losses_38179302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_3818081

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????@@?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?<
?
D__inference_decoder_layer_call_and_return_conditional_losses_3818229
input_1
conv2d_45_3818092
conv2d_45_3818094$
 instance_normalization_9_3818097$
 instance_normalization_9_3818099
conv2d_46_3818137
conv2d_46_3818139%
!instance_normalization_10_3818142%
!instance_normalization_10_3818144
conv2d_47_3818180
conv2d_47_3818182%
!instance_normalization_11_3818185%
!instance_normalization_11_3818187
conv2d_48_3818223
conv2d_48_3818225
identity??!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?1instance_normalization_10/StatefulPartitionedCall?1instance_normalization_11/StatefulPartitionedCall?0instance_normalization_9/StatefulPartitionedCall?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_45_3818092conv2d_45_3818094*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_38180812#
!conv2d_45/StatefulPartitionedCall?
0instance_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0 instance_normalization_9_3818097 instance_normalization_9_3818099*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_instance_normalization_9_layer_call_and_return_conditional_losses_381793022
0instance_normalization_9/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall9instance_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181072
re_lu_3/PartitionedCall?
up_sampling2d/PartitionedCallPartitionedCall re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_38180612
up_sampling2d/PartitionedCall?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_46_3818137conv2d_46_3818139*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_38181262#
!conv2d_46/StatefulPartitionedCall?
1instance_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0!instance_normalization_10_3818142!instance_normalization_10_3818144*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_instance_normalization_10_layer_call_and_return_conditional_losses_381798423
1instance_normalization_10/StatefulPartitionedCall?
re_lu_3/PartitionedCall_1PartitionedCall:instance_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181512
re_lu_3/PartitionedCall_1?
up_sampling2d/PartitionedCall_1PartitionedCall"re_lu_3/PartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_38180612!
up_sampling2d/PartitionedCall_1?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d/PartitionedCall_1:output:0conv2d_47_3818180conv2d_47_3818182*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_38181692#
!conv2d_47/StatefulPartitionedCall?
1instance_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0!instance_normalization_11_3818185!instance_normalization_11_3818187*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_instance_normalization_11_layer_call_and_return_conditional_losses_381803823
1instance_normalization_11/StatefulPartitionedCall?
re_lu_3/PartitionedCall_2PartitionedCall:instance_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181942
re_lu_3/PartitionedCall_2?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall"re_lu_3/PartitionedCall_2:output:0conv2d_48_3818223conv2d_48_3818225*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_38182122#
!conv2d_48/StatefulPartitionedCall?
IdentityIdentity*conv2d_48/StatefulPartitionedCall:output:0"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall2^instance_normalization_10/StatefulPartitionedCall2^instance_normalization_11/StatefulPartitionedCall1^instance_normalization_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2f
1instance_normalization_10/StatefulPartitionedCall1instance_normalization_10/StatefulPartitionedCall2f
1instance_normalization_11/StatefulPartitionedCall1instance_normalization_11/StatefulPartitionedCall2d
0instance_normalization_9/StatefulPartitionedCall0instance_normalization_9/StatefulPartitionedCall:Y U
0
_output_shapes
:?????????@@?
!
_user_specified_name	input_1
?

?
)__inference_decoder_layer_call_fn_3818263
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_38182292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????@@?
!
_user_specified_name	input_1
?	
?
%__inference_signature_wrapper_3818498
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_38178862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
??
?
"__inference__wrapped_model_3817886
input_12<
8model_3_decoder_conv2d_45_conv2d_readvariableop_resource=
9model_3_decoder_conv2d_45_biasadd_readvariableop_resourceL
Hmodel_3_decoder_instance_normalization_9_reshape_readvariableop_resourceN
Jmodel_3_decoder_instance_normalization_9_reshape_1_readvariableop_resource<
8model_3_decoder_conv2d_46_conv2d_readvariableop_resource=
9model_3_decoder_conv2d_46_biasadd_readvariableop_resourceM
Imodel_3_decoder_instance_normalization_10_reshape_readvariableop_resourceO
Kmodel_3_decoder_instance_normalization_10_reshape_1_readvariableop_resource<
8model_3_decoder_conv2d_47_conv2d_readvariableop_resource=
9model_3_decoder_conv2d_47_biasadd_readvariableop_resourceM
Imodel_3_decoder_instance_normalization_11_reshape_readvariableop_resourceO
Kmodel_3_decoder_instance_normalization_11_reshape_1_readvariableop_resource<
8model_3_decoder_conv2d_48_conv2d_readvariableop_resource=
9model_3_decoder_conv2d_48_biasadd_readvariableop_resource
identity??0model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp?/model_3/decoder/conv2d_45/Conv2D/ReadVariableOp?0model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp?/model_3/decoder/conv2d_46/Conv2D/ReadVariableOp?0model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp?/model_3/decoder/conv2d_47/Conv2D/ReadVariableOp?0model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp?/model_3/decoder/conv2d_48/Conv2D/ReadVariableOp?@model_3/decoder/instance_normalization_10/Reshape/ReadVariableOp?Bmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOp?@model_3/decoder/instance_normalization_11/Reshape/ReadVariableOp?Bmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOp??model_3/decoder/instance_normalization_9/Reshape/ReadVariableOp?Amodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
/model_3/decoder/conv2d_45/Conv2D/ReadVariableOpReadVariableOp8model_3_decoder_conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/model_3/decoder/conv2d_45/Conv2D/ReadVariableOp?
 model_3/decoder/conv2d_45/Conv2DConv2Dinput_127model_3/decoder/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2"
 model_3/decoder/conv2d_45/Conv2D?
0model_3/decoder/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp9model_3_decoder_conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp?
!model_3/decoder/conv2d_45/BiasAddBiasAdd)model_3/decoder/conv2d_45/Conv2D:output:08model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2#
!model_3/decoder/conv2d_45/BiasAdd?
.model_3/decoder/instance_normalization_9/ShapeShape*model_3/decoder/conv2d_45/BiasAdd:output:0*
T0*
_output_shapes
:20
.model_3/decoder/instance_normalization_9/Shape?
<model_3/decoder/instance_normalization_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<model_3/decoder/instance_normalization_9/strided_slice/stack?
>model_3/decoder/instance_normalization_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>model_3/decoder/instance_normalization_9/strided_slice/stack_1?
>model_3/decoder/instance_normalization_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>model_3/decoder/instance_normalization_9/strided_slice/stack_2?
6model_3/decoder/instance_normalization_9/strided_sliceStridedSlice7model_3/decoder/instance_normalization_9/Shape:output:0Emodel_3/decoder/instance_normalization_9/strided_slice/stack:output:0Gmodel_3/decoder/instance_normalization_9/strided_slice/stack_1:output:0Gmodel_3/decoder/instance_normalization_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6model_3/decoder/instance_normalization_9/strided_slice?
>model_3/decoder/instance_normalization_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>model_3/decoder/instance_normalization_9/strided_slice_1/stack?
@model_3/decoder/instance_normalization_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_1/stack_1?
@model_3/decoder/instance_normalization_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_1/stack_2?
8model_3/decoder/instance_normalization_9/strided_slice_1StridedSlice7model_3/decoder/instance_normalization_9/Shape:output:0Gmodel_3/decoder/instance_normalization_9/strided_slice_1/stack:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_1/stack_1:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8model_3/decoder/instance_normalization_9/strided_slice_1?
>model_3/decoder/instance_normalization_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>model_3/decoder/instance_normalization_9/strided_slice_2/stack?
@model_3/decoder/instance_normalization_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_2/stack_1?
@model_3/decoder/instance_normalization_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_2/stack_2?
8model_3/decoder/instance_normalization_9/strided_slice_2StridedSlice7model_3/decoder/instance_normalization_9/Shape:output:0Gmodel_3/decoder/instance_normalization_9/strided_slice_2/stack:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_2/stack_1:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8model_3/decoder/instance_normalization_9/strided_slice_2?
>model_3/decoder/instance_normalization_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>model_3/decoder/instance_normalization_9/strided_slice_3/stack?
@model_3/decoder/instance_normalization_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_3/stack_1?
@model_3/decoder/instance_normalization_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_3/decoder/instance_normalization_9/strided_slice_3/stack_2?
8model_3/decoder/instance_normalization_9/strided_slice_3StridedSlice7model_3/decoder/instance_normalization_9/Shape:output:0Gmodel_3/decoder/instance_normalization_9/strided_slice_3/stack:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_3/stack_1:output:0Imodel_3/decoder/instance_normalization_9/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8model_3/decoder/instance_normalization_9/strided_slice_3?
Gmodel_3/decoder/instance_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gmodel_3/decoder/instance_normalization_9/moments/mean/reduction_indices?
5model_3/decoder/instance_normalization_9/moments/meanMean*model_3/decoder/conv2d_45/BiasAdd:output:0Pmodel_3/decoder/instance_normalization_9/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(27
5model_3/decoder/instance_normalization_9/moments/mean?
=model_3/decoder/instance_normalization_9/moments/StopGradientStopGradient>model_3/decoder/instance_normalization_9/moments/mean:output:0*
T0*0
_output_shapes
:??????????2?
=model_3/decoder/instance_normalization_9/moments/StopGradient?
Bmodel_3/decoder/instance_normalization_9/moments/SquaredDifferenceSquaredDifference*model_3/decoder/conv2d_45/BiasAdd:output:0Fmodel_3/decoder/instance_normalization_9/moments/StopGradient:output:0*
T0*0
_output_shapes
:?????????@@?2D
Bmodel_3/decoder/instance_normalization_9/moments/SquaredDifference?
Kmodel_3/decoder/instance_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2M
Kmodel_3/decoder/instance_normalization_9/moments/variance/reduction_indices?
9model_3/decoder/instance_normalization_9/moments/varianceMeanFmodel_3/decoder/instance_normalization_9/moments/SquaredDifference:z:0Tmodel_3/decoder/instance_normalization_9/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2;
9model_3/decoder/instance_normalization_9/moments/variance?
?model_3/decoder/instance_normalization_9/Reshape/ReadVariableOpReadVariableOpHmodel_3_decoder_instance_normalization_9_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?model_3/decoder/instance_normalization_9/Reshape/ReadVariableOp?
6model_3/decoder/instance_normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            28
6model_3/decoder/instance_normalization_9/Reshape/shape?
0model_3/decoder/instance_normalization_9/ReshapeReshapeGmodel_3/decoder/instance_normalization_9/Reshape/ReadVariableOp:value:0?model_3/decoder/instance_normalization_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?22
0model_3/decoder/instance_normalization_9/Reshape?
Amodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOpReadVariableOpJmodel_3_decoder_instance_normalization_9_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
8model_3/decoder/instance_normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2:
8model_3/decoder/instance_normalization_9/Reshape_1/shape?
2model_3/decoder/instance_normalization_9/Reshape_1ReshapeImodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOp:value:0Amodel_3/decoder/instance_normalization_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?24
2model_3/decoder/instance_normalization_9/Reshape_1?
8model_3/decoder/instance_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8model_3/decoder/instance_normalization_9/batchnorm/add/y?
6model_3/decoder/instance_normalization_9/batchnorm/addAddV2Bmodel_3/decoder/instance_normalization_9/moments/variance:output:0Amodel_3/decoder/instance_normalization_9/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????28
6model_3/decoder/instance_normalization_9/batchnorm/add?
8model_3/decoder/instance_normalization_9/batchnorm/RsqrtRsqrt:model_3/decoder/instance_normalization_9/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????2:
8model_3/decoder/instance_normalization_9/batchnorm/Rsqrt?
6model_3/decoder/instance_normalization_9/batchnorm/mulMul<model_3/decoder/instance_normalization_9/batchnorm/Rsqrt:y:09model_3/decoder/instance_normalization_9/Reshape:output:0*
T0*0
_output_shapes
:??????????28
6model_3/decoder/instance_normalization_9/batchnorm/mul?
8model_3/decoder/instance_normalization_9/batchnorm/mul_1Mul*model_3/decoder/conv2d_45/BiasAdd:output:0:model_3/decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????@@?2:
8model_3/decoder/instance_normalization_9/batchnorm/mul_1?
8model_3/decoder/instance_normalization_9/batchnorm/mul_2Mul>model_3/decoder/instance_normalization_9/moments/mean:output:0:model_3/decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2:
8model_3/decoder/instance_normalization_9/batchnorm/mul_2?
6model_3/decoder/instance_normalization_9/batchnorm/subSub;model_3/decoder/instance_normalization_9/Reshape_1:output:0<model_3/decoder/instance_normalization_9/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????28
6model_3/decoder/instance_normalization_9/batchnorm/sub?
8model_3/decoder/instance_normalization_9/batchnorm/add_1AddV2<model_3/decoder/instance_normalization_9/batchnorm/mul_1:z:0:model_3/decoder/instance_normalization_9/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????@@?2:
8model_3/decoder/instance_normalization_9/batchnorm/add_1?
model_3/decoder/re_lu_3/ReluRelu<model_3/decoder/instance_normalization_9/batchnorm/add_1:z:0*
T0*0
_output_shapes
:?????????@@?2
model_3/decoder/re_lu_3/Relu?
#model_3/decoder/up_sampling2d/ShapeShape*model_3/decoder/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:2%
#model_3/decoder/up_sampling2d/Shape?
1model_3/decoder/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1model_3/decoder/up_sampling2d/strided_slice/stack?
3model_3/decoder/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_3/decoder/up_sampling2d/strided_slice/stack_1?
3model_3/decoder/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_3/decoder/up_sampling2d/strided_slice/stack_2?
+model_3/decoder/up_sampling2d/strided_sliceStridedSlice,model_3/decoder/up_sampling2d/Shape:output:0:model_3/decoder/up_sampling2d/strided_slice/stack:output:0<model_3/decoder/up_sampling2d/strided_slice/stack_1:output:0<model_3/decoder/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2-
+model_3/decoder/up_sampling2d/strided_slice?
#model_3/decoder/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model_3/decoder/up_sampling2d/Const?
!model_3/decoder/up_sampling2d/mulMul4model_3/decoder/up_sampling2d/strided_slice:output:0,model_3/decoder/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2#
!model_3/decoder/up_sampling2d/mul?
:model_3/decoder/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor*model_3/decoder/re_lu_3/Relu:activations:0%model_3/decoder/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2<
:model_3/decoder/up_sampling2d/resize/ResizeNearestNeighbor?
/model_3/decoder/conv2d_46/Conv2D/ReadVariableOpReadVariableOp8model_3_decoder_conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype021
/model_3/decoder/conv2d_46/Conv2D/ReadVariableOp?
 model_3/decoder/conv2d_46/Conv2DConv2DKmodel_3/decoder/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:07model_3/decoder/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????*
paddingSAME*
strides
2"
 model_3/decoder/conv2d_46/Conv2D?
0model_3/decoder/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp9model_3_decoder_conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp?
!model_3/decoder/conv2d_46/BiasAddBiasAdd)model_3/decoder/conv2d_46/Conv2D:output:08model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????2#
!model_3/decoder/conv2d_46/BiasAdd?
/model_3/decoder/instance_normalization_10/ShapeShape*model_3/decoder/conv2d_46/BiasAdd:output:0*
T0*
_output_shapes
:21
/model_3/decoder/instance_normalization_10/Shape?
=model_3/decoder/instance_normalization_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=model_3/decoder/instance_normalization_10/strided_slice/stack?
?model_3/decoder/instance_normalization_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_10/strided_slice/stack_1?
?model_3/decoder/instance_normalization_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_10/strided_slice/stack_2?
7model_3/decoder/instance_normalization_10/strided_sliceStridedSlice8model_3/decoder/instance_normalization_10/Shape:output:0Fmodel_3/decoder/instance_normalization_10/strided_slice/stack:output:0Hmodel_3/decoder/instance_normalization_10/strided_slice/stack_1:output:0Hmodel_3/decoder/instance_normalization_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7model_3/decoder/instance_normalization_10/strided_slice?
?model_3/decoder/instance_normalization_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_10/strided_slice_1/stack?
Amodel_3/decoder/instance_normalization_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_1/stack_1?
Amodel_3/decoder/instance_normalization_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_1/stack_2?
9model_3/decoder/instance_normalization_10/strided_slice_1StridedSlice8model_3/decoder/instance_normalization_10/Shape:output:0Hmodel_3/decoder/instance_normalization_10/strided_slice_1/stack:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_1/stack_1:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_10/strided_slice_1?
?model_3/decoder/instance_normalization_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_10/strided_slice_2/stack?
Amodel_3/decoder/instance_normalization_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_2/stack_1?
Amodel_3/decoder/instance_normalization_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_2/stack_2?
9model_3/decoder/instance_normalization_10/strided_slice_2StridedSlice8model_3/decoder/instance_normalization_10/Shape:output:0Hmodel_3/decoder/instance_normalization_10/strided_slice_2/stack:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_2/stack_1:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_10/strided_slice_2?
?model_3/decoder/instance_normalization_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_10/strided_slice_3/stack?
Amodel_3/decoder/instance_normalization_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_3/stack_1?
Amodel_3/decoder/instance_normalization_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_10/strided_slice_3/stack_2?
9model_3/decoder/instance_normalization_10/strided_slice_3StridedSlice8model_3/decoder/instance_normalization_10/Shape:output:0Hmodel_3/decoder/instance_normalization_10/strided_slice_3/stack:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_3/stack_1:output:0Jmodel_3/decoder/instance_normalization_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_10/strided_slice_3?
Hmodel_3/decoder/instance_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2J
Hmodel_3/decoder/instance_normalization_10/moments/mean/reduction_indices?
6model_3/decoder/instance_normalization_10/moments/meanMean*model_3/decoder/conv2d_46/BiasAdd:output:0Qmodel_3/decoder/instance_normalization_10/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(28
6model_3/decoder/instance_normalization_10/moments/mean?
>model_3/decoder/instance_normalization_10/moments/StopGradientStopGradient?model_3/decoder/instance_normalization_10/moments/mean:output:0*
T0*0
_output_shapes
:??????????2@
>model_3/decoder/instance_normalization_10/moments/StopGradient?
Cmodel_3/decoder/instance_normalization_10/moments/SquaredDifferenceSquaredDifference*model_3/decoder/conv2d_46/BiasAdd:output:0Gmodel_3/decoder/instance_normalization_10/moments/StopGradient:output:0*
T0*2
_output_shapes 
:????????????2E
Cmodel_3/decoder/instance_normalization_10/moments/SquaredDifference?
Lmodel_3/decoder/instance_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2N
Lmodel_3/decoder/instance_normalization_10/moments/variance/reduction_indices?
:model_3/decoder/instance_normalization_10/moments/varianceMeanGmodel_3/decoder/instance_normalization_10/moments/SquaredDifference:z:0Umodel_3/decoder/instance_normalization_10/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2<
:model_3/decoder/instance_normalization_10/moments/variance?
@model_3/decoder/instance_normalization_10/Reshape/ReadVariableOpReadVariableOpImodel_3_decoder_instance_normalization_10_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@model_3/decoder/instance_normalization_10/Reshape/ReadVariableOp?
7model_3/decoder/instance_normalization_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   29
7model_3/decoder/instance_normalization_10/Reshape/shape?
1model_3/decoder/instance_normalization_10/ReshapeReshapeHmodel_3/decoder/instance_normalization_10/Reshape/ReadVariableOp:value:0@model_3/decoder/instance_normalization_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?23
1model_3/decoder/instance_normalization_10/Reshape?
Bmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOpReadVariableOpKmodel_3_decoder_instance_normalization_10_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOp?
9model_3/decoder/instance_normalization_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   2;
9model_3/decoder/instance_normalization_10/Reshape_1/shape?
3model_3/decoder/instance_normalization_10/Reshape_1ReshapeJmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOp:value:0Bmodel_3/decoder/instance_normalization_10/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?25
3model_3/decoder/instance_normalization_10/Reshape_1?
9model_3/decoder/instance_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2;
9model_3/decoder/instance_normalization_10/batchnorm/add/y?
7model_3/decoder/instance_normalization_10/batchnorm/addAddV2Cmodel_3/decoder/instance_normalization_10/moments/variance:output:0Bmodel_3/decoder/instance_normalization_10/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????29
7model_3/decoder/instance_normalization_10/batchnorm/add?
9model_3/decoder/instance_normalization_10/batchnorm/RsqrtRsqrt;model_3/decoder/instance_normalization_10/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????2;
9model_3/decoder/instance_normalization_10/batchnorm/Rsqrt?
7model_3/decoder/instance_normalization_10/batchnorm/mulMul=model_3/decoder/instance_normalization_10/batchnorm/Rsqrt:y:0:model_3/decoder/instance_normalization_10/Reshape:output:0*
T0*0
_output_shapes
:??????????29
7model_3/decoder/instance_normalization_10/batchnorm/mul?
9model_3/decoder/instance_normalization_10/batchnorm/mul_1Mul*model_3/decoder/conv2d_46/BiasAdd:output:0;model_3/decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*2
_output_shapes 
:????????????2;
9model_3/decoder/instance_normalization_10/batchnorm/mul_1?
9model_3/decoder/instance_normalization_10/batchnorm/mul_2Mul?model_3/decoder/instance_normalization_10/moments/mean:output:0;model_3/decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2;
9model_3/decoder/instance_normalization_10/batchnorm/mul_2?
7model_3/decoder/instance_normalization_10/batchnorm/subSub<model_3/decoder/instance_normalization_10/Reshape_1:output:0=model_3/decoder/instance_normalization_10/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????29
7model_3/decoder/instance_normalization_10/batchnorm/sub?
9model_3/decoder/instance_normalization_10/batchnorm/add_1AddV2=model_3/decoder/instance_normalization_10/batchnorm/mul_1:z:0;model_3/decoder/instance_normalization_10/batchnorm/sub:z:0*
T0*2
_output_shapes 
:????????????2;
9model_3/decoder/instance_normalization_10/batchnorm/add_1?
model_3/decoder/re_lu_3/Relu_1Relu=model_3/decoder/instance_normalization_10/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:????????????2 
model_3/decoder/re_lu_3/Relu_1?
%model_3/decoder/up_sampling2d/Shape_1Shape,model_3/decoder/re_lu_3/Relu_1:activations:0*
T0*
_output_shapes
:2'
%model_3/decoder/up_sampling2d/Shape_1?
3model_3/decoder/up_sampling2d/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3model_3/decoder/up_sampling2d/strided_slice_1/stack?
5model_3/decoder/up_sampling2d/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5model_3/decoder/up_sampling2d/strided_slice_1/stack_1?
5model_3/decoder/up_sampling2d/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5model_3/decoder/up_sampling2d/strided_slice_1/stack_2?
-model_3/decoder/up_sampling2d/strided_slice_1StridedSlice.model_3/decoder/up_sampling2d/Shape_1:output:0<model_3/decoder/up_sampling2d/strided_slice_1/stack:output:0>model_3/decoder/up_sampling2d/strided_slice_1/stack_1:output:0>model_3/decoder/up_sampling2d/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2/
-model_3/decoder/up_sampling2d/strided_slice_1?
%model_3/decoder/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2'
%model_3/decoder/up_sampling2d/Const_1?
#model_3/decoder/up_sampling2d/mul_1Mul6model_3/decoder/up_sampling2d/strided_slice_1:output:0.model_3/decoder/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2%
#model_3/decoder/up_sampling2d/mul_1?
<model_3/decoder/up_sampling2d/resize_1/ResizeNearestNeighborResizeNearestNeighbor,model_3/decoder/re_lu_3/Relu_1:activations:0'model_3/decoder/up_sampling2d/mul_1:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(2>
<model_3/decoder/up_sampling2d/resize_1/ResizeNearestNeighbor?
/model_3/decoder/conv2d_47/Conv2D/ReadVariableOpReadVariableOp8model_3_decoder_conv2d_47_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype021
/model_3/decoder/conv2d_47/Conv2D/ReadVariableOp?
 model_3/decoder/conv2d_47/Conv2DConv2DMmodel_3/decoder/up_sampling2d/resize_1/ResizeNearestNeighbor:resized_images:07model_3/decoder/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2"
 model_3/decoder/conv2d_47/Conv2D?
0model_3/decoder/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp9model_3_decoder_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp?
!model_3/decoder/conv2d_47/BiasAddBiasAdd)model_3/decoder/conv2d_47/Conv2D:output:08model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2#
!model_3/decoder/conv2d_47/BiasAdd?
/model_3/decoder/instance_normalization_11/ShapeShape*model_3/decoder/conv2d_47/BiasAdd:output:0*
T0*
_output_shapes
:21
/model_3/decoder/instance_normalization_11/Shape?
=model_3/decoder/instance_normalization_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=model_3/decoder/instance_normalization_11/strided_slice/stack?
?model_3/decoder/instance_normalization_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_11/strided_slice/stack_1?
?model_3/decoder/instance_normalization_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_11/strided_slice/stack_2?
7model_3/decoder/instance_normalization_11/strided_sliceStridedSlice8model_3/decoder/instance_normalization_11/Shape:output:0Fmodel_3/decoder/instance_normalization_11/strided_slice/stack:output:0Hmodel_3/decoder/instance_normalization_11/strided_slice/stack_1:output:0Hmodel_3/decoder/instance_normalization_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7model_3/decoder/instance_normalization_11/strided_slice?
?model_3/decoder/instance_normalization_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_11/strided_slice_1/stack?
Amodel_3/decoder/instance_normalization_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_1/stack_1?
Amodel_3/decoder/instance_normalization_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_1/stack_2?
9model_3/decoder/instance_normalization_11/strided_slice_1StridedSlice8model_3/decoder/instance_normalization_11/Shape:output:0Hmodel_3/decoder/instance_normalization_11/strided_slice_1/stack:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_1/stack_1:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_11/strided_slice_1?
?model_3/decoder/instance_normalization_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_11/strided_slice_2/stack?
Amodel_3/decoder/instance_normalization_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_2/stack_1?
Amodel_3/decoder/instance_normalization_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_2/stack_2?
9model_3/decoder/instance_normalization_11/strided_slice_2StridedSlice8model_3/decoder/instance_normalization_11/Shape:output:0Hmodel_3/decoder/instance_normalization_11/strided_slice_2/stack:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_2/stack_1:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_11/strided_slice_2?
?model_3/decoder/instance_normalization_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_3/decoder/instance_normalization_11/strided_slice_3/stack?
Amodel_3/decoder/instance_normalization_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_3/stack_1?
Amodel_3/decoder/instance_normalization_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_3/decoder/instance_normalization_11/strided_slice_3/stack_2?
9model_3/decoder/instance_normalization_11/strided_slice_3StridedSlice8model_3/decoder/instance_normalization_11/Shape:output:0Hmodel_3/decoder/instance_normalization_11/strided_slice_3/stack:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_3/stack_1:output:0Jmodel_3/decoder/instance_normalization_11/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9model_3/decoder/instance_normalization_11/strided_slice_3?
Hmodel_3/decoder/instance_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2J
Hmodel_3/decoder/instance_normalization_11/moments/mean/reduction_indices?
6model_3/decoder/instance_normalization_11/moments/meanMean*model_3/decoder/conv2d_47/BiasAdd:output:0Qmodel_3/decoder/instance_normalization_11/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(28
6model_3/decoder/instance_normalization_11/moments/mean?
>model_3/decoder/instance_normalization_11/moments/StopGradientStopGradient?model_3/decoder/instance_normalization_11/moments/mean:output:0*
T0*/
_output_shapes
:?????????@2@
>model_3/decoder/instance_normalization_11/moments/StopGradient?
Cmodel_3/decoder/instance_normalization_11/moments/SquaredDifferenceSquaredDifference*model_3/decoder/conv2d_47/BiasAdd:output:0Gmodel_3/decoder/instance_normalization_11/moments/StopGradient:output:0*
T0*1
_output_shapes
:???????????@2E
Cmodel_3/decoder/instance_normalization_11/moments/SquaredDifference?
Lmodel_3/decoder/instance_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2N
Lmodel_3/decoder/instance_normalization_11/moments/variance/reduction_indices?
:model_3/decoder/instance_normalization_11/moments/varianceMeanGmodel_3/decoder/instance_normalization_11/moments/SquaredDifference:z:0Umodel_3/decoder/instance_normalization_11/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2<
:model_3/decoder/instance_normalization_11/moments/variance?
@model_3/decoder/instance_normalization_11/Reshape/ReadVariableOpReadVariableOpImodel_3_decoder_instance_normalization_11_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_3/decoder/instance_normalization_11/Reshape/ReadVariableOp?
7model_3/decoder/instance_normalization_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   29
7model_3/decoder/instance_normalization_11/Reshape/shape?
1model_3/decoder/instance_normalization_11/ReshapeReshapeHmodel_3/decoder/instance_normalization_11/Reshape/ReadVariableOp:value:0@model_3/decoder/instance_normalization_11/Reshape/shape:output:0*
T0*&
_output_shapes
:@23
1model_3/decoder/instance_normalization_11/Reshape?
Bmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOpReadVariableOpKmodel_3_decoder_instance_normalization_11_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOp?
9model_3/decoder/instance_normalization_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2;
9model_3/decoder/instance_normalization_11/Reshape_1/shape?
3model_3/decoder/instance_normalization_11/Reshape_1ReshapeJmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOp:value:0Bmodel_3/decoder/instance_normalization_11/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@25
3model_3/decoder/instance_normalization_11/Reshape_1?
9model_3/decoder/instance_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2;
9model_3/decoder/instance_normalization_11/batchnorm/add/y?
7model_3/decoder/instance_normalization_11/batchnorm/addAddV2Cmodel_3/decoder/instance_normalization_11/moments/variance:output:0Bmodel_3/decoder/instance_normalization_11/batchnorm/add/y:output:0*
T0*/
_output_shapes
:?????????@29
7model_3/decoder/instance_normalization_11/batchnorm/add?
9model_3/decoder/instance_normalization_11/batchnorm/RsqrtRsqrt;model_3/decoder/instance_normalization_11/batchnorm/add:z:0*
T0*/
_output_shapes
:?????????@2;
9model_3/decoder/instance_normalization_11/batchnorm/Rsqrt?
7model_3/decoder/instance_normalization_11/batchnorm/mulMul=model_3/decoder/instance_normalization_11/batchnorm/Rsqrt:y:0:model_3/decoder/instance_normalization_11/Reshape:output:0*
T0*/
_output_shapes
:?????????@29
7model_3/decoder/instance_normalization_11/batchnorm/mul?
9model_3/decoder/instance_normalization_11/batchnorm/mul_1Mul*model_3/decoder/conv2d_47/BiasAdd:output:0;model_3/decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????@2;
9model_3/decoder/instance_normalization_11/batchnorm/mul_1?
9model_3/decoder/instance_normalization_11/batchnorm/mul_2Mul?model_3/decoder/instance_normalization_11/moments/mean:output:0;model_3/decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@2;
9model_3/decoder/instance_normalization_11/batchnorm/mul_2?
7model_3/decoder/instance_normalization_11/batchnorm/subSub<model_3/decoder/instance_normalization_11/Reshape_1:output:0=model_3/decoder/instance_normalization_11/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:?????????@29
7model_3/decoder/instance_normalization_11/batchnorm/sub?
9model_3/decoder/instance_normalization_11/batchnorm/add_1AddV2=model_3/decoder/instance_normalization_11/batchnorm/mul_1:z:0;model_3/decoder/instance_normalization_11/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????@2;
9model_3/decoder/instance_normalization_11/batchnorm/add_1?
model_3/decoder/re_lu_3/Relu_2Relu=model_3/decoder/instance_normalization_11/batchnorm/add_1:z:0*
T0*1
_output_shapes
:???????????@2 
model_3/decoder/re_lu_3/Relu_2?
/model_3/decoder/conv2d_48/Conv2D/ReadVariableOpReadVariableOp8model_3_decoder_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype021
/model_3/decoder/conv2d_48/Conv2D/ReadVariableOp?
 model_3/decoder/conv2d_48/Conv2DConv2D,model_3/decoder/re_lu_3/Relu_2:activations:07model_3/decoder/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2"
 model_3/decoder/conv2d_48/Conv2D?
0model_3/decoder/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp9model_3_decoder_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp?
!model_3/decoder/conv2d_48/BiasAddBiasAdd)model_3/decoder/conv2d_48/Conv2D:output:08model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2#
!model_3/decoder/conv2d_48/BiasAdd?
!model_3/decoder/conv2d_48/SigmoidSigmoid*model_3/decoder/conv2d_48/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2#
!model_3/decoder/conv2d_48/Sigmoid?
IdentityIdentity%model_3/decoder/conv2d_48/Sigmoid:y:01^model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp0^model_3/decoder/conv2d_45/Conv2D/ReadVariableOp1^model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp0^model_3/decoder/conv2d_46/Conv2D/ReadVariableOp1^model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp0^model_3/decoder/conv2d_47/Conv2D/ReadVariableOp1^model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp0^model_3/decoder/conv2d_48/Conv2D/ReadVariableOpA^model_3/decoder/instance_normalization_10/Reshape/ReadVariableOpC^model_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOpA^model_3/decoder/instance_normalization_11/Reshape/ReadVariableOpC^model_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOp@^model_3/decoder/instance_normalization_9/Reshape/ReadVariableOpB^model_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2d
0model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp0model_3/decoder/conv2d_45/BiasAdd/ReadVariableOp2b
/model_3/decoder/conv2d_45/Conv2D/ReadVariableOp/model_3/decoder/conv2d_45/Conv2D/ReadVariableOp2d
0model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp0model_3/decoder/conv2d_46/BiasAdd/ReadVariableOp2b
/model_3/decoder/conv2d_46/Conv2D/ReadVariableOp/model_3/decoder/conv2d_46/Conv2D/ReadVariableOp2d
0model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp0model_3/decoder/conv2d_47/BiasAdd/ReadVariableOp2b
/model_3/decoder/conv2d_47/Conv2D/ReadVariableOp/model_3/decoder/conv2d_47/Conv2D/ReadVariableOp2d
0model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp0model_3/decoder/conv2d_48/BiasAdd/ReadVariableOp2b
/model_3/decoder/conv2d_48/Conv2D/ReadVariableOp/model_3/decoder/conv2d_48/Conv2D/ReadVariableOp2?
@model_3/decoder/instance_normalization_10/Reshape/ReadVariableOp@model_3/decoder/instance_normalization_10/Reshape/ReadVariableOp2?
Bmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOpBmodel_3/decoder/instance_normalization_10/Reshape_1/ReadVariableOp2?
@model_3/decoder/instance_normalization_11/Reshape/ReadVariableOp@model_3/decoder/instance_normalization_11/Reshape/ReadVariableOp2?
Bmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOpBmodel_3/decoder/instance_normalization_11/Reshape_1/ReadVariableOp2?
?model_3/decoder/instance_normalization_9/Reshape/ReadVariableOp?model_3/decoder/instance_normalization_9/Reshape/ReadVariableOp2?
Amodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOpAmodel_3/decoder/instance_normalization_9/Reshape_1/ReadVariableOp:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
?
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818330
input_12
decoder_3818300
decoder_3818302
decoder_3818304
decoder_3818306
decoder_3818308
decoder_3818310
decoder_3818312
decoder_3818314
decoder_3818316
decoder_3818318
decoder_3818320
decoder_3818322
decoder_3818324
decoder_3818326
identity??decoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinput_12decoder_3818300decoder_3818302decoder_3818304decoder_3818306decoder_3818308decoder_3818310decoder_3818312decoder_3818314decoder_3818316decoder_3818318decoder_3818320decoder_3818322decoder_3818324decoder_3818326*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_38182292!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
?
?
+__inference_conv2d_45_layer_call_fn_3818913

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_38180812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????@@?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3818061

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
)__inference_model_3_layer_call_fn_3818397
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_38183662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818986

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????@@?2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
?
;__inference_instance_normalization_10_layer_call_fn_3817994

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_instance_normalization_10_layer_call_and_return_conditional_losses_38179842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
)__inference_model_3_layer_call_fn_3818463
input_12
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_38184322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
?
E
)__inference_re_lu_3_layer_call_fn_3818981

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181512
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818297
input_12
decoder_3818267
decoder_3818269
decoder_3818271
decoder_3818273
decoder_3818275
decoder_3818277
decoder_3818279
decoder_3818281
decoder_3818283
decoder_3818285
decoder_3818287
decoder_3818289
decoder_3818291
decoder_3818293
identity??decoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinput_12decoder_3818267decoder_3818269decoder_3818271decoder_3818273decoder_3818275decoder_3818277decoder_3818279decoder_3818281decoder_3818283decoder_3818285decoder_3818287decoder_3818289decoder_3818291decoder_3818293*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_38182292!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
input_12
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818996

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_3818962

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_up_sampling2d_layer_call_fn_3818067

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_38180612
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?D
?
#__inference__traced_restore_3819118
file_prefixE
Aassignvariableop_color_transform_network_decoder_conv2d_45_kernelE
Aassignvariableop_1_color_transform_network_decoder_conv2d_45_biasG
Cassignvariableop_2_color_transform_network_decoder_conv2d_46_kernelE
Aassignvariableop_3_color_transform_network_decoder_conv2d_46_biasG
Cassignvariableop_4_color_transform_network_decoder_conv2d_47_kernelE
Aassignvariableop_5_color_transform_network_decoder_conv2d_47_biasG
Cassignvariableop_6_color_transform_network_decoder_conv2d_48_kernelE
Aassignvariableop_7_color_transform_network_decoder_conv2d_48_biasU
Qassignvariableop_8_color_transform_network_decoder_instance_normalization_9_gammaT
Passignvariableop_9_color_transform_network_decoder_instance_normalization_9_betaW
Sassignvariableop_10_color_transform_network_decoder_instance_normalization_10_gammaV
Rassignvariableop_11_color_transform_network_decoder_instance_normalization_10_betaW
Sassignvariableop_12_color_transform_network_decoder_instance_normalization_11_gammaV
Rassignvariableop_13_color_transform_network_decoder_instance_normalization_11_beta
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpAassignvariableop_color_transform_network_decoder_conv2d_45_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpAassignvariableop_1_color_transform_network_decoder_conv2d_45_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpCassignvariableop_2_color_transform_network_decoder_conv2d_46_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpAassignvariableop_3_color_transform_network_decoder_conv2d_46_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpCassignvariableop_4_color_transform_network_decoder_conv2d_47_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpAassignvariableop_5_color_transform_network_decoder_conv2d_47_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpCassignvariableop_6_color_transform_network_decoder_conv2d_48_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpAassignvariableop_7_color_transform_network_decoder_conv2d_48_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpQassignvariableop_8_color_transform_network_decoder_instance_normalization_9_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpPassignvariableop_9_color_transform_network_decoder_instance_normalization_9_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpSassignvariableop_10_color_transform_network_decoder_instance_normalization_10_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpRassignvariableop_11_color_transform_network_decoder_instance_normalization_10_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpSassignvariableop_12_color_transform_network_decoder_instance_normalization_11_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpRassignvariableop_13_color_transform_network_decoder_instance_normalization_11_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14?
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*M
_input_shapes<
:: ::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
;__inference_instance_normalization_11_layer_call_fn_3818048

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_instance_normalization_11_layer_call_and_return_conditional_losses_38180382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
E
)__inference_re_lu_3_layer_call_fn_3818991

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181072
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
E
)__inference_re_lu_3_layer_call_fn_3819001

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_re_lu_3_layer_call_and_return_conditional_losses_38181942
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
)__inference_model_3_layer_call_fn_3818894

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_38184322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?

?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_3818923

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_3818169

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_48_layer_call_fn_3818971

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_38182122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?0
?
U__inference_instance_normalization_9_layer_call_and_return_conditional_losses_3817930

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:??????????2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2
moments/variance?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape?
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:?2	
Reshape?
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape?
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/Rsqrt?
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_2?
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_3818212

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?/
?

 __inference__traced_save_3819066
file_prefixO
Ksavev2_color_transform_network_decoder_conv2d_45_kernel_read_readvariableopM
Isavev2_color_transform_network_decoder_conv2d_45_bias_read_readvariableopO
Ksavev2_color_transform_network_decoder_conv2d_46_kernel_read_readvariableopM
Isavev2_color_transform_network_decoder_conv2d_46_bias_read_readvariableopO
Ksavev2_color_transform_network_decoder_conv2d_47_kernel_read_readvariableopM
Isavev2_color_transform_network_decoder_conv2d_47_bias_read_readvariableopO
Ksavev2_color_transform_network_decoder_conv2d_48_kernel_read_readvariableopM
Isavev2_color_transform_network_decoder_conv2d_48_bias_read_readvariableop]
Ysavev2_color_transform_network_decoder_instance_normalization_9_gamma_read_readvariableop\
Xsavev2_color_transform_network_decoder_instance_normalization_9_beta_read_readvariableop^
Zsavev2_color_transform_network_decoder_instance_normalization_10_gamma_read_readvariableop]
Ysavev2_color_transform_network_decoder_instance_normalization_10_beta_read_readvariableop^
Zsavev2_color_transform_network_decoder_instance_normalization_11_gamma_read_readvariableop]
Ysavev2_color_transform_network_decoder_instance_normalization_11_beta_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ksavev2_color_transform_network_decoder_conv2d_45_kernel_read_readvariableopIsavev2_color_transform_network_decoder_conv2d_45_bias_read_readvariableopKsavev2_color_transform_network_decoder_conv2d_46_kernel_read_readvariableopIsavev2_color_transform_network_decoder_conv2d_46_bias_read_readvariableopKsavev2_color_transform_network_decoder_conv2d_47_kernel_read_readvariableopIsavev2_color_transform_network_decoder_conv2d_47_bias_read_readvariableopKsavev2_color_transform_network_decoder_conv2d_48_kernel_read_readvariableopIsavev2_color_transform_network_decoder_conv2d_48_bias_read_readvariableopYsavev2_color_transform_network_decoder_instance_normalization_9_gamma_read_readvariableopXsavev2_color_transform_network_decoder_instance_normalization_9_beta_read_readvariableopZsavev2_color_transform_network_decoder_instance_normalization_10_gamma_read_readvariableopYsavev2_color_transform_network_decoder_instance_normalization_10_beta_read_readvariableopZsavev2_color_transform_network_decoder_instance_normalization_11_gamma_read_readvariableopYsavev2_color_transform_network_decoder_instance_normalization_11_beta_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :??:?:??:?:?@:@:@::?:?:?:?:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: 
?0
?
V__inference_instance_normalization_11_layer_call_and_return_conditional_losses_3818038

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:?????????@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(2
moments/variance?
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape/shape?
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:@2	
Reshape?
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape_1/shape?
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:?????????@2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:?????????@2
batchnorm/Rsqrt?
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:?????????@2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/mul_1?
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@2
batchnorm/mul_2?
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:?????????@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
`
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818151

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_46_layer_call_fn_3818932

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_38181262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ݴ
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818663

inputs4
0decoder_conv2d_45_conv2d_readvariableop_resource5
1decoder_conv2d_45_biasadd_readvariableop_resourceD
@decoder_instance_normalization_9_reshape_readvariableop_resourceF
Bdecoder_instance_normalization_9_reshape_1_readvariableop_resource4
0decoder_conv2d_46_conv2d_readvariableop_resource5
1decoder_conv2d_46_biasadd_readvariableop_resourceE
Adecoder_instance_normalization_10_reshape_readvariableop_resourceG
Cdecoder_instance_normalization_10_reshape_1_readvariableop_resource4
0decoder_conv2d_47_conv2d_readvariableop_resource5
1decoder_conv2d_47_biasadd_readvariableop_resourceE
Adecoder_instance_normalization_11_reshape_readvariableop_resourceG
Cdecoder_instance_normalization_11_reshape_1_readvariableop_resource4
0decoder_conv2d_48_conv2d_readvariableop_resource5
1decoder_conv2d_48_biasadd_readvariableop_resource
identity??(decoder/conv2d_45/BiasAdd/ReadVariableOp?'decoder/conv2d_45/Conv2D/ReadVariableOp?(decoder/conv2d_46/BiasAdd/ReadVariableOp?'decoder/conv2d_46/Conv2D/ReadVariableOp?(decoder/conv2d_47/BiasAdd/ReadVariableOp?'decoder/conv2d_47/Conv2D/ReadVariableOp?(decoder/conv2d_48/BiasAdd/ReadVariableOp?'decoder/conv2d_48/Conv2D/ReadVariableOp?8decoder/instance_normalization_10/Reshape/ReadVariableOp?:decoder/instance_normalization_10/Reshape_1/ReadVariableOp?8decoder/instance_normalization_11/Reshape/ReadVariableOp?:decoder/instance_normalization_11/Reshape_1/ReadVariableOp?7decoder/instance_normalization_9/Reshape/ReadVariableOp?9decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
'decoder/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'decoder/conv2d_45/Conv2D/ReadVariableOp?
decoder/conv2d_45/Conv2DConv2Dinputs/decoder/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
decoder/conv2d_45/Conv2D?
(decoder/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(decoder/conv2d_45/BiasAdd/ReadVariableOp?
decoder/conv2d_45/BiasAddBiasAdd!decoder/conv2d_45/Conv2D:output:00decoder/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2
decoder/conv2d_45/BiasAdd?
&decoder/instance_normalization_9/ShapeShape"decoder/conv2d_45/BiasAdd:output:0*
T0*
_output_shapes
:2(
&decoder/instance_normalization_9/Shape?
4decoder/instance_normalization_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4decoder/instance_normalization_9/strided_slice/stack?
6decoder/instance_normalization_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice/stack_1?
6decoder/instance_normalization_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice/stack_2?
.decoder/instance_normalization_9/strided_sliceStridedSlice/decoder/instance_normalization_9/Shape:output:0=decoder/instance_normalization_9/strided_slice/stack:output:0?decoder/instance_normalization_9/strided_slice/stack_1:output:0?decoder/instance_normalization_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.decoder/instance_normalization_9/strided_slice?
6decoder/instance_normalization_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_1/stack?
8decoder/instance_normalization_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_1/stack_1?
8decoder/instance_normalization_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_1/stack_2?
0decoder/instance_normalization_9/strided_slice_1StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_1/stack:output:0Adecoder/instance_normalization_9/strided_slice_1/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_1?
6decoder/instance_normalization_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_2/stack?
8decoder/instance_normalization_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_2/stack_1?
8decoder/instance_normalization_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_2/stack_2?
0decoder/instance_normalization_9/strided_slice_2StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_2/stack:output:0Adecoder/instance_normalization_9/strided_slice_2/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_2?
6decoder/instance_normalization_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_3/stack?
8decoder/instance_normalization_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_3/stack_1?
8decoder/instance_normalization_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_3/stack_2?
0decoder/instance_normalization_9/strided_slice_3StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_3/stack:output:0Adecoder/instance_normalization_9/strided_slice_3/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_3?
?decoder/instance_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?decoder/instance_normalization_9/moments/mean/reduction_indices?
-decoder/instance_normalization_9/moments/meanMean"decoder/conv2d_45/BiasAdd:output:0Hdecoder/instance_normalization_9/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2/
-decoder/instance_normalization_9/moments/mean?
5decoder/instance_normalization_9/moments/StopGradientStopGradient6decoder/instance_normalization_9/moments/mean:output:0*
T0*0
_output_shapes
:??????????27
5decoder/instance_normalization_9/moments/StopGradient?
:decoder/instance_normalization_9/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_45/BiasAdd:output:0>decoder/instance_normalization_9/moments/StopGradient:output:0*
T0*0
_output_shapes
:?????????@@?2<
:decoder/instance_normalization_9/moments/SquaredDifference?
Cdecoder/instance_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cdecoder/instance_normalization_9/moments/variance/reduction_indices?
1decoder/instance_normalization_9/moments/varianceMean>decoder/instance_normalization_9/moments/SquaredDifference:z:0Ldecoder/instance_normalization_9/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(23
1decoder/instance_normalization_9/moments/variance?
7decoder/instance_normalization_9/Reshape/ReadVariableOpReadVariableOp@decoder_instance_normalization_9_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype029
7decoder/instance_normalization_9/Reshape/ReadVariableOp?
.decoder/instance_normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            20
.decoder/instance_normalization_9/Reshape/shape?
(decoder/instance_normalization_9/ReshapeReshape?decoder/instance_normalization_9/Reshape/ReadVariableOp:value:07decoder/instance_normalization_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?2*
(decoder/instance_normalization_9/Reshape?
9decoder/instance_normalization_9/Reshape_1/ReadVariableOpReadVariableOpBdecoder_instance_normalization_9_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
0decoder/instance_normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            22
0decoder/instance_normalization_9/Reshape_1/shape?
*decoder/instance_normalization_9/Reshape_1ReshapeAdecoder/instance_normalization_9/Reshape_1/ReadVariableOp:value:09decoder/instance_normalization_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2,
*decoder/instance_normalization_9/Reshape_1?
0decoder/instance_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0decoder/instance_normalization_9/batchnorm/add/y?
.decoder/instance_normalization_9/batchnorm/addAddV2:decoder/instance_normalization_9/moments/variance:output:09decoder/instance_normalization_9/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/add?
0decoder/instance_normalization_9/batchnorm/RsqrtRsqrt2decoder/instance_normalization_9/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????22
0decoder/instance_normalization_9/batchnorm/Rsqrt?
.decoder/instance_normalization_9/batchnorm/mulMul4decoder/instance_normalization_9/batchnorm/Rsqrt:y:01decoder/instance_normalization_9/Reshape:output:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/mul?
0decoder/instance_normalization_9/batchnorm/mul_1Mul"decoder/conv2d_45/BiasAdd:output:02decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????@@?22
0decoder/instance_normalization_9/batchnorm/mul_1?
0decoder/instance_normalization_9/batchnorm/mul_2Mul6decoder/instance_normalization_9/moments/mean:output:02decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????22
0decoder/instance_normalization_9/batchnorm/mul_2?
.decoder/instance_normalization_9/batchnorm/subSub3decoder/instance_normalization_9/Reshape_1:output:04decoder/instance_normalization_9/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/sub?
0decoder/instance_normalization_9/batchnorm/add_1AddV24decoder/instance_normalization_9/batchnorm/mul_1:z:02decoder/instance_normalization_9/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????@@?22
0decoder/instance_normalization_9/batchnorm/add_1?
decoder/re_lu_3/ReluRelu4decoder/instance_normalization_9/batchnorm/add_1:z:0*
T0*0
_output_shapes
:?????????@@?2
decoder/re_lu_3/Relu?
decoder/up_sampling2d/ShapeShape"decoder/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/Shape?
)decoder/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)decoder/up_sampling2d/strided_slice/stack?
+decoder/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice/stack_1?
+decoder/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice/stack_2?
#decoder/up_sampling2d/strided_sliceStridedSlice$decoder/up_sampling2d/Shape:output:02decoder/up_sampling2d/strided_slice/stack:output:04decoder/up_sampling2d/strided_slice/stack_1:output:04decoder/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#decoder/up_sampling2d/strided_slice?
decoder/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
decoder/up_sampling2d/Const?
decoder/up_sampling2d/mulMul,decoder/up_sampling2d/strided_slice:output:0$decoder/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/mul?
2decoder/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor"decoder/re_lu_3/Relu:activations:0decoder/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(24
2decoder/up_sampling2d/resize/ResizeNearestNeighbor?
'decoder/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'decoder/conv2d_46/Conv2D/ReadVariableOp?
decoder/conv2d_46/Conv2DConv2DCdecoder/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0/decoder/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????*
paddingSAME*
strides
2
decoder/conv2d_46/Conv2D?
(decoder/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(decoder/conv2d_46/BiasAdd/ReadVariableOp?
decoder/conv2d_46/BiasAddBiasAdd!decoder/conv2d_46/Conv2D:output:00decoder/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????2
decoder/conv2d_46/BiasAdd?
'decoder/instance_normalization_10/ShapeShape"decoder/conv2d_46/BiasAdd:output:0*
T0*
_output_shapes
:2)
'decoder/instance_normalization_10/Shape?
5decoder/instance_normalization_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5decoder/instance_normalization_10/strided_slice/stack?
7decoder/instance_normalization_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice/stack_1?
7decoder/instance_normalization_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice/stack_2?
/decoder/instance_normalization_10/strided_sliceStridedSlice0decoder/instance_normalization_10/Shape:output:0>decoder/instance_normalization_10/strided_slice/stack:output:0@decoder/instance_normalization_10/strided_slice/stack_1:output:0@decoder/instance_normalization_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/decoder/instance_normalization_10/strided_slice?
7decoder/instance_normalization_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_1/stack?
9decoder/instance_normalization_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_1/stack_1?
9decoder/instance_normalization_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_1/stack_2?
1decoder/instance_normalization_10/strided_slice_1StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_1/stack:output:0Bdecoder/instance_normalization_10/strided_slice_1/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_1?
7decoder/instance_normalization_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_2/stack?
9decoder/instance_normalization_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_2/stack_1?
9decoder/instance_normalization_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_2/stack_2?
1decoder/instance_normalization_10/strided_slice_2StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_2/stack:output:0Bdecoder/instance_normalization_10/strided_slice_2/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_2?
7decoder/instance_normalization_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_3/stack?
9decoder/instance_normalization_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_3/stack_1?
9decoder/instance_normalization_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_3/stack_2?
1decoder/instance_normalization_10/strided_slice_3StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_3/stack:output:0Bdecoder/instance_normalization_10/strided_slice_3/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_3?
@decoder/instance_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@decoder/instance_normalization_10/moments/mean/reduction_indices?
.decoder/instance_normalization_10/moments/meanMean"decoder/conv2d_46/BiasAdd:output:0Idecoder/instance_normalization_10/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(20
.decoder/instance_normalization_10/moments/mean?
6decoder/instance_normalization_10/moments/StopGradientStopGradient7decoder/instance_normalization_10/moments/mean:output:0*
T0*0
_output_shapes
:??????????28
6decoder/instance_normalization_10/moments/StopGradient?
;decoder/instance_normalization_10/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_46/BiasAdd:output:0?decoder/instance_normalization_10/moments/StopGradient:output:0*
T0*2
_output_shapes 
:????????????2=
;decoder/instance_normalization_10/moments/SquaredDifference?
Ddecoder/instance_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2F
Ddecoder/instance_normalization_10/moments/variance/reduction_indices?
2decoder/instance_normalization_10/moments/varianceMean?decoder/instance_normalization_10/moments/SquaredDifference:z:0Mdecoder/instance_normalization_10/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(24
2decoder/instance_normalization_10/moments/variance?
8decoder/instance_normalization_10/Reshape/ReadVariableOpReadVariableOpAdecoder_instance_normalization_10_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8decoder/instance_normalization_10/Reshape/ReadVariableOp?
/decoder/instance_normalization_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   21
/decoder/instance_normalization_10/Reshape/shape?
)decoder/instance_normalization_10/ReshapeReshape@decoder/instance_normalization_10/Reshape/ReadVariableOp:value:08decoder/instance_normalization_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?2+
)decoder/instance_normalization_10/Reshape?
:decoder/instance_normalization_10/Reshape_1/ReadVariableOpReadVariableOpCdecoder_instance_normalization_10_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:decoder/instance_normalization_10/Reshape_1/ReadVariableOp?
1decoder/instance_normalization_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   23
1decoder/instance_normalization_10/Reshape_1/shape?
+decoder/instance_normalization_10/Reshape_1ReshapeBdecoder/instance_normalization_10/Reshape_1/ReadVariableOp:value:0:decoder/instance_normalization_10/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2-
+decoder/instance_normalization_10/Reshape_1?
1decoder/instance_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1decoder/instance_normalization_10/batchnorm/add/y?
/decoder/instance_normalization_10/batchnorm/addAddV2;decoder/instance_normalization_10/moments/variance:output:0:decoder/instance_normalization_10/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/add?
1decoder/instance_normalization_10/batchnorm/RsqrtRsqrt3decoder/instance_normalization_10/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????23
1decoder/instance_normalization_10/batchnorm/Rsqrt?
/decoder/instance_normalization_10/batchnorm/mulMul5decoder/instance_normalization_10/batchnorm/Rsqrt:y:02decoder/instance_normalization_10/Reshape:output:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/mul?
1decoder/instance_normalization_10/batchnorm/mul_1Mul"decoder/conv2d_46/BiasAdd:output:03decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*2
_output_shapes 
:????????????23
1decoder/instance_normalization_10/batchnorm/mul_1?
1decoder/instance_normalization_10/batchnorm/mul_2Mul7decoder/instance_normalization_10/moments/mean:output:03decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????23
1decoder/instance_normalization_10/batchnorm/mul_2?
/decoder/instance_normalization_10/batchnorm/subSub4decoder/instance_normalization_10/Reshape_1:output:05decoder/instance_normalization_10/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/sub?
1decoder/instance_normalization_10/batchnorm/add_1AddV25decoder/instance_normalization_10/batchnorm/mul_1:z:03decoder/instance_normalization_10/batchnorm/sub:z:0*
T0*2
_output_shapes 
:????????????23
1decoder/instance_normalization_10/batchnorm/add_1?
decoder/re_lu_3/Relu_1Relu5decoder/instance_normalization_10/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:????????????2
decoder/re_lu_3/Relu_1?
decoder/up_sampling2d/Shape_1Shape$decoder/re_lu_3/Relu_1:activations:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/Shape_1?
+decoder/up_sampling2d/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice_1/stack?
-decoder/up_sampling2d/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-decoder/up_sampling2d/strided_slice_1/stack_1?
-decoder/up_sampling2d/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-decoder/up_sampling2d/strided_slice_1/stack_2?
%decoder/up_sampling2d/strided_slice_1StridedSlice&decoder/up_sampling2d/Shape_1:output:04decoder/up_sampling2d/strided_slice_1/stack:output:06decoder/up_sampling2d/strided_slice_1/stack_1:output:06decoder/up_sampling2d/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%decoder/up_sampling2d/strided_slice_1?
decoder/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
decoder/up_sampling2d/Const_1?
decoder/up_sampling2d/mul_1Mul.decoder/up_sampling2d/strided_slice_1:output:0&decoder/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/mul_1?
4decoder/up_sampling2d/resize_1/ResizeNearestNeighborResizeNearestNeighbor$decoder/re_lu_3/Relu_1:activations:0decoder/up_sampling2d/mul_1:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(26
4decoder/up_sampling2d/resize_1/ResizeNearestNeighbor?
'decoder/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_47_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'decoder/conv2d_47/Conv2D/ReadVariableOp?
decoder/conv2d_47/Conv2DConv2DEdecoder/up_sampling2d/resize_1/ResizeNearestNeighbor:resized_images:0/decoder/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
decoder/conv2d_47/Conv2D?
(decoder/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(decoder/conv2d_47/BiasAdd/ReadVariableOp?
decoder/conv2d_47/BiasAddBiasAdd!decoder/conv2d_47/Conv2D:output:00decoder/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
decoder/conv2d_47/BiasAdd?
'decoder/instance_normalization_11/ShapeShape"decoder/conv2d_47/BiasAdd:output:0*
T0*
_output_shapes
:2)
'decoder/instance_normalization_11/Shape?
5decoder/instance_normalization_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5decoder/instance_normalization_11/strided_slice/stack?
7decoder/instance_normalization_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice/stack_1?
7decoder/instance_normalization_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice/stack_2?
/decoder/instance_normalization_11/strided_sliceStridedSlice0decoder/instance_normalization_11/Shape:output:0>decoder/instance_normalization_11/strided_slice/stack:output:0@decoder/instance_normalization_11/strided_slice/stack_1:output:0@decoder/instance_normalization_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/decoder/instance_normalization_11/strided_slice?
7decoder/instance_normalization_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_1/stack?
9decoder/instance_normalization_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_1/stack_1?
9decoder/instance_normalization_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_1/stack_2?
1decoder/instance_normalization_11/strided_slice_1StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_1/stack:output:0Bdecoder/instance_normalization_11/strided_slice_1/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_1?
7decoder/instance_normalization_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_2/stack?
9decoder/instance_normalization_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_2/stack_1?
9decoder/instance_normalization_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_2/stack_2?
1decoder/instance_normalization_11/strided_slice_2StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_2/stack:output:0Bdecoder/instance_normalization_11/strided_slice_2/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_2?
7decoder/instance_normalization_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_3/stack?
9decoder/instance_normalization_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_3/stack_1?
9decoder/instance_normalization_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_3/stack_2?
1decoder/instance_normalization_11/strided_slice_3StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_3/stack:output:0Bdecoder/instance_normalization_11/strided_slice_3/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_3?
@decoder/instance_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@decoder/instance_normalization_11/moments/mean/reduction_indices?
.decoder/instance_normalization_11/moments/meanMean"decoder/conv2d_47/BiasAdd:output:0Idecoder/instance_normalization_11/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(20
.decoder/instance_normalization_11/moments/mean?
6decoder/instance_normalization_11/moments/StopGradientStopGradient7decoder/instance_normalization_11/moments/mean:output:0*
T0*/
_output_shapes
:?????????@28
6decoder/instance_normalization_11/moments/StopGradient?
;decoder/instance_normalization_11/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_47/BiasAdd:output:0?decoder/instance_normalization_11/moments/StopGradient:output:0*
T0*1
_output_shapes
:???????????@2=
;decoder/instance_normalization_11/moments/SquaredDifference?
Ddecoder/instance_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2F
Ddecoder/instance_normalization_11/moments/variance/reduction_indices?
2decoder/instance_normalization_11/moments/varianceMean?decoder/instance_normalization_11/moments/SquaredDifference:z:0Mdecoder/instance_normalization_11/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(24
2decoder/instance_normalization_11/moments/variance?
8decoder/instance_normalization_11/Reshape/ReadVariableOpReadVariableOpAdecoder_instance_normalization_11_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02:
8decoder/instance_normalization_11/Reshape/ReadVariableOp?
/decoder/instance_normalization_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   21
/decoder/instance_normalization_11/Reshape/shape?
)decoder/instance_normalization_11/ReshapeReshape@decoder/instance_normalization_11/Reshape/ReadVariableOp:value:08decoder/instance_normalization_11/Reshape/shape:output:0*
T0*&
_output_shapes
:@2+
)decoder/instance_normalization_11/Reshape?
:decoder/instance_normalization_11/Reshape_1/ReadVariableOpReadVariableOpCdecoder_instance_normalization_11_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02<
:decoder/instance_normalization_11/Reshape_1/ReadVariableOp?
1decoder/instance_normalization_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   23
1decoder/instance_normalization_11/Reshape_1/shape?
+decoder/instance_normalization_11/Reshape_1ReshapeBdecoder/instance_normalization_11/Reshape_1/ReadVariableOp:value:0:decoder/instance_normalization_11/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2-
+decoder/instance_normalization_11/Reshape_1?
1decoder/instance_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1decoder/instance_normalization_11/batchnorm/add/y?
/decoder/instance_normalization_11/batchnorm/addAddV2;decoder/instance_normalization_11/moments/variance:output:0:decoder/instance_normalization_11/batchnorm/add/y:output:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/add?
1decoder/instance_normalization_11/batchnorm/RsqrtRsqrt3decoder/instance_normalization_11/batchnorm/add:z:0*
T0*/
_output_shapes
:?????????@23
1decoder/instance_normalization_11/batchnorm/Rsqrt?
/decoder/instance_normalization_11/batchnorm/mulMul5decoder/instance_normalization_11/batchnorm/Rsqrt:y:02decoder/instance_normalization_11/Reshape:output:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/mul?
1decoder/instance_normalization_11/batchnorm/mul_1Mul"decoder/conv2d_47/BiasAdd:output:03decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????@23
1decoder/instance_normalization_11/batchnorm/mul_1?
1decoder/instance_normalization_11/batchnorm/mul_2Mul7decoder/instance_normalization_11/moments/mean:output:03decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@23
1decoder/instance_normalization_11/batchnorm/mul_2?
/decoder/instance_normalization_11/batchnorm/subSub4decoder/instance_normalization_11/Reshape_1:output:05decoder/instance_normalization_11/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/sub?
1decoder/instance_normalization_11/batchnorm/add_1AddV25decoder/instance_normalization_11/batchnorm/mul_1:z:03decoder/instance_normalization_11/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????@23
1decoder/instance_normalization_11/batchnorm/add_1?
decoder/re_lu_3/Relu_2Relu5decoder/instance_normalization_11/batchnorm/add_1:z:0*
T0*1
_output_shapes
:???????????@2
decoder/re_lu_3/Relu_2?
'decoder/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'decoder/conv2d_48/Conv2D/ReadVariableOp?
decoder/conv2d_48/Conv2DConv2D$decoder/re_lu_3/Relu_2:activations:0/decoder/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
decoder/conv2d_48/Conv2D?
(decoder/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(decoder/conv2d_48/BiasAdd/ReadVariableOp?
decoder/conv2d_48/BiasAddBiasAdd!decoder/conv2d_48/Conv2D:output:00decoder/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
decoder/conv2d_48/BiasAdd?
decoder/conv2d_48/SigmoidSigmoid"decoder/conv2d_48/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
decoder/conv2d_48/Sigmoid?
IdentityIdentitydecoder/conv2d_48/Sigmoid:y:0)^decoder/conv2d_45/BiasAdd/ReadVariableOp(^decoder/conv2d_45/Conv2D/ReadVariableOp)^decoder/conv2d_46/BiasAdd/ReadVariableOp(^decoder/conv2d_46/Conv2D/ReadVariableOp)^decoder/conv2d_47/BiasAdd/ReadVariableOp(^decoder/conv2d_47/Conv2D/ReadVariableOp)^decoder/conv2d_48/BiasAdd/ReadVariableOp(^decoder/conv2d_48/Conv2D/ReadVariableOp9^decoder/instance_normalization_10/Reshape/ReadVariableOp;^decoder/instance_normalization_10/Reshape_1/ReadVariableOp9^decoder/instance_normalization_11/Reshape/ReadVariableOp;^decoder/instance_normalization_11/Reshape_1/ReadVariableOp8^decoder/instance_normalization_9/Reshape/ReadVariableOp:^decoder/instance_normalization_9/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2T
(decoder/conv2d_45/BiasAdd/ReadVariableOp(decoder/conv2d_45/BiasAdd/ReadVariableOp2R
'decoder/conv2d_45/Conv2D/ReadVariableOp'decoder/conv2d_45/Conv2D/ReadVariableOp2T
(decoder/conv2d_46/BiasAdd/ReadVariableOp(decoder/conv2d_46/BiasAdd/ReadVariableOp2R
'decoder/conv2d_46/Conv2D/ReadVariableOp'decoder/conv2d_46/Conv2D/ReadVariableOp2T
(decoder/conv2d_47/BiasAdd/ReadVariableOp(decoder/conv2d_47/BiasAdd/ReadVariableOp2R
'decoder/conv2d_47/Conv2D/ReadVariableOp'decoder/conv2d_47/Conv2D/ReadVariableOp2T
(decoder/conv2d_48/BiasAdd/ReadVariableOp(decoder/conv2d_48/BiasAdd/ReadVariableOp2R
'decoder/conv2d_48/Conv2D/ReadVariableOp'decoder/conv2d_48/Conv2D/ReadVariableOp2t
8decoder/instance_normalization_10/Reshape/ReadVariableOp8decoder/instance_normalization_10/Reshape/ReadVariableOp2x
:decoder/instance_normalization_10/Reshape_1/ReadVariableOp:decoder/instance_normalization_10/Reshape_1/ReadVariableOp2t
8decoder/instance_normalization_11/Reshape/ReadVariableOp8decoder/instance_normalization_11/Reshape/ReadVariableOp2x
:decoder/instance_normalization_11/Reshape_1/ReadVariableOp:decoder/instance_normalization_11/Reshape_1/ReadVariableOp2r
7decoder/instance_normalization_9/Reshape/ReadVariableOp7decoder/instance_normalization_9/Reshape/ReadVariableOp2v
9decoder/instance_normalization_9/Reshape_1/ReadVariableOp9decoder/instance_normalization_9/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
ݴ
?
D__inference_model_3_layer_call_and_return_conditional_losses_3818828

inputs4
0decoder_conv2d_45_conv2d_readvariableop_resource5
1decoder_conv2d_45_biasadd_readvariableop_resourceD
@decoder_instance_normalization_9_reshape_readvariableop_resourceF
Bdecoder_instance_normalization_9_reshape_1_readvariableop_resource4
0decoder_conv2d_46_conv2d_readvariableop_resource5
1decoder_conv2d_46_biasadd_readvariableop_resourceE
Adecoder_instance_normalization_10_reshape_readvariableop_resourceG
Cdecoder_instance_normalization_10_reshape_1_readvariableop_resource4
0decoder_conv2d_47_conv2d_readvariableop_resource5
1decoder_conv2d_47_biasadd_readvariableop_resourceE
Adecoder_instance_normalization_11_reshape_readvariableop_resourceG
Cdecoder_instance_normalization_11_reshape_1_readvariableop_resource4
0decoder_conv2d_48_conv2d_readvariableop_resource5
1decoder_conv2d_48_biasadd_readvariableop_resource
identity??(decoder/conv2d_45/BiasAdd/ReadVariableOp?'decoder/conv2d_45/Conv2D/ReadVariableOp?(decoder/conv2d_46/BiasAdd/ReadVariableOp?'decoder/conv2d_46/Conv2D/ReadVariableOp?(decoder/conv2d_47/BiasAdd/ReadVariableOp?'decoder/conv2d_47/Conv2D/ReadVariableOp?(decoder/conv2d_48/BiasAdd/ReadVariableOp?'decoder/conv2d_48/Conv2D/ReadVariableOp?8decoder/instance_normalization_10/Reshape/ReadVariableOp?:decoder/instance_normalization_10/Reshape_1/ReadVariableOp?8decoder/instance_normalization_11/Reshape/ReadVariableOp?:decoder/instance_normalization_11/Reshape_1/ReadVariableOp?7decoder/instance_normalization_9/Reshape/ReadVariableOp?9decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
'decoder/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'decoder/conv2d_45/Conv2D/ReadVariableOp?
decoder/conv2d_45/Conv2DConv2Dinputs/decoder/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
decoder/conv2d_45/Conv2D?
(decoder/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(decoder/conv2d_45/BiasAdd/ReadVariableOp?
decoder/conv2d_45/BiasAddBiasAdd!decoder/conv2d_45/Conv2D:output:00decoder/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2
decoder/conv2d_45/BiasAdd?
&decoder/instance_normalization_9/ShapeShape"decoder/conv2d_45/BiasAdd:output:0*
T0*
_output_shapes
:2(
&decoder/instance_normalization_9/Shape?
4decoder/instance_normalization_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4decoder/instance_normalization_9/strided_slice/stack?
6decoder/instance_normalization_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice/stack_1?
6decoder/instance_normalization_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice/stack_2?
.decoder/instance_normalization_9/strided_sliceStridedSlice/decoder/instance_normalization_9/Shape:output:0=decoder/instance_normalization_9/strided_slice/stack:output:0?decoder/instance_normalization_9/strided_slice/stack_1:output:0?decoder/instance_normalization_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.decoder/instance_normalization_9/strided_slice?
6decoder/instance_normalization_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_1/stack?
8decoder/instance_normalization_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_1/stack_1?
8decoder/instance_normalization_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_1/stack_2?
0decoder/instance_normalization_9/strided_slice_1StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_1/stack:output:0Adecoder/instance_normalization_9/strided_slice_1/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_1?
6decoder/instance_normalization_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_2/stack?
8decoder/instance_normalization_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_2/stack_1?
8decoder/instance_normalization_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_2/stack_2?
0decoder/instance_normalization_9/strided_slice_2StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_2/stack:output:0Adecoder/instance_normalization_9/strided_slice_2/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_2?
6decoder/instance_normalization_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6decoder/instance_normalization_9/strided_slice_3/stack?
8decoder/instance_normalization_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_3/stack_1?
8decoder/instance_normalization_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8decoder/instance_normalization_9/strided_slice_3/stack_2?
0decoder/instance_normalization_9/strided_slice_3StridedSlice/decoder/instance_normalization_9/Shape:output:0?decoder/instance_normalization_9/strided_slice_3/stack:output:0Adecoder/instance_normalization_9/strided_slice_3/stack_1:output:0Adecoder/instance_normalization_9/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0decoder/instance_normalization_9/strided_slice_3?
?decoder/instance_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?decoder/instance_normalization_9/moments/mean/reduction_indices?
-decoder/instance_normalization_9/moments/meanMean"decoder/conv2d_45/BiasAdd:output:0Hdecoder/instance_normalization_9/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(2/
-decoder/instance_normalization_9/moments/mean?
5decoder/instance_normalization_9/moments/StopGradientStopGradient6decoder/instance_normalization_9/moments/mean:output:0*
T0*0
_output_shapes
:??????????27
5decoder/instance_normalization_9/moments/StopGradient?
:decoder/instance_normalization_9/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_45/BiasAdd:output:0>decoder/instance_normalization_9/moments/StopGradient:output:0*
T0*0
_output_shapes
:?????????@@?2<
:decoder/instance_normalization_9/moments/SquaredDifference?
Cdecoder/instance_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cdecoder/instance_normalization_9/moments/variance/reduction_indices?
1decoder/instance_normalization_9/moments/varianceMean>decoder/instance_normalization_9/moments/SquaredDifference:z:0Ldecoder/instance_normalization_9/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(23
1decoder/instance_normalization_9/moments/variance?
7decoder/instance_normalization_9/Reshape/ReadVariableOpReadVariableOp@decoder_instance_normalization_9_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype029
7decoder/instance_normalization_9/Reshape/ReadVariableOp?
.decoder/instance_normalization_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            20
.decoder/instance_normalization_9/Reshape/shape?
(decoder/instance_normalization_9/ReshapeReshape?decoder/instance_normalization_9/Reshape/ReadVariableOp:value:07decoder/instance_normalization_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?2*
(decoder/instance_normalization_9/Reshape?
9decoder/instance_normalization_9/Reshape_1/ReadVariableOpReadVariableOpBdecoder_instance_normalization_9_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9decoder/instance_normalization_9/Reshape_1/ReadVariableOp?
0decoder/instance_normalization_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            22
0decoder/instance_normalization_9/Reshape_1/shape?
*decoder/instance_normalization_9/Reshape_1ReshapeAdecoder/instance_normalization_9/Reshape_1/ReadVariableOp:value:09decoder/instance_normalization_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2,
*decoder/instance_normalization_9/Reshape_1?
0decoder/instance_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0decoder/instance_normalization_9/batchnorm/add/y?
.decoder/instance_normalization_9/batchnorm/addAddV2:decoder/instance_normalization_9/moments/variance:output:09decoder/instance_normalization_9/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/add?
0decoder/instance_normalization_9/batchnorm/RsqrtRsqrt2decoder/instance_normalization_9/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????22
0decoder/instance_normalization_9/batchnorm/Rsqrt?
.decoder/instance_normalization_9/batchnorm/mulMul4decoder/instance_normalization_9/batchnorm/Rsqrt:y:01decoder/instance_normalization_9/Reshape:output:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/mul?
0decoder/instance_normalization_9/batchnorm/mul_1Mul"decoder/conv2d_45/BiasAdd:output:02decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????@@?22
0decoder/instance_normalization_9/batchnorm/mul_1?
0decoder/instance_normalization_9/batchnorm/mul_2Mul6decoder/instance_normalization_9/moments/mean:output:02decoder/instance_normalization_9/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????22
0decoder/instance_normalization_9/batchnorm/mul_2?
.decoder/instance_normalization_9/batchnorm/subSub3decoder/instance_normalization_9/Reshape_1:output:04decoder/instance_normalization_9/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????20
.decoder/instance_normalization_9/batchnorm/sub?
0decoder/instance_normalization_9/batchnorm/add_1AddV24decoder/instance_normalization_9/batchnorm/mul_1:z:02decoder/instance_normalization_9/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????@@?22
0decoder/instance_normalization_9/batchnorm/add_1?
decoder/re_lu_3/ReluRelu4decoder/instance_normalization_9/batchnorm/add_1:z:0*
T0*0
_output_shapes
:?????????@@?2
decoder/re_lu_3/Relu?
decoder/up_sampling2d/ShapeShape"decoder/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/Shape?
)decoder/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)decoder/up_sampling2d/strided_slice/stack?
+decoder/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice/stack_1?
+decoder/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice/stack_2?
#decoder/up_sampling2d/strided_sliceStridedSlice$decoder/up_sampling2d/Shape:output:02decoder/up_sampling2d/strided_slice/stack:output:04decoder/up_sampling2d/strided_slice/stack_1:output:04decoder/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#decoder/up_sampling2d/strided_slice?
decoder/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
decoder/up_sampling2d/Const?
decoder/up_sampling2d/mulMul,decoder/up_sampling2d/strided_slice:output:0$decoder/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/mul?
2decoder/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor"decoder/re_lu_3/Relu:activations:0decoder/up_sampling2d/mul:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(24
2decoder/up_sampling2d/resize/ResizeNearestNeighbor?
'decoder/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'decoder/conv2d_46/Conv2D/ReadVariableOp?
decoder/conv2d_46/Conv2DConv2DCdecoder/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0/decoder/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????*
paddingSAME*
strides
2
decoder/conv2d_46/Conv2D?
(decoder/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(decoder/conv2d_46/BiasAdd/ReadVariableOp?
decoder/conv2d_46/BiasAddBiasAdd!decoder/conv2d_46/Conv2D:output:00decoder/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:????????????2
decoder/conv2d_46/BiasAdd?
'decoder/instance_normalization_10/ShapeShape"decoder/conv2d_46/BiasAdd:output:0*
T0*
_output_shapes
:2)
'decoder/instance_normalization_10/Shape?
5decoder/instance_normalization_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5decoder/instance_normalization_10/strided_slice/stack?
7decoder/instance_normalization_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice/stack_1?
7decoder/instance_normalization_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice/stack_2?
/decoder/instance_normalization_10/strided_sliceStridedSlice0decoder/instance_normalization_10/Shape:output:0>decoder/instance_normalization_10/strided_slice/stack:output:0@decoder/instance_normalization_10/strided_slice/stack_1:output:0@decoder/instance_normalization_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/decoder/instance_normalization_10/strided_slice?
7decoder/instance_normalization_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_1/stack?
9decoder/instance_normalization_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_1/stack_1?
9decoder/instance_normalization_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_1/stack_2?
1decoder/instance_normalization_10/strided_slice_1StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_1/stack:output:0Bdecoder/instance_normalization_10/strided_slice_1/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_1?
7decoder/instance_normalization_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_2/stack?
9decoder/instance_normalization_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_2/stack_1?
9decoder/instance_normalization_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_2/stack_2?
1decoder/instance_normalization_10/strided_slice_2StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_2/stack:output:0Bdecoder/instance_normalization_10/strided_slice_2/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_2?
7decoder/instance_normalization_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_10/strided_slice_3/stack?
9decoder/instance_normalization_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_3/stack_1?
9decoder/instance_normalization_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_10/strided_slice_3/stack_2?
1decoder/instance_normalization_10/strided_slice_3StridedSlice0decoder/instance_normalization_10/Shape:output:0@decoder/instance_normalization_10/strided_slice_3/stack:output:0Bdecoder/instance_normalization_10/strided_slice_3/stack_1:output:0Bdecoder/instance_normalization_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_10/strided_slice_3?
@decoder/instance_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@decoder/instance_normalization_10/moments/mean/reduction_indices?
.decoder/instance_normalization_10/moments/meanMean"decoder/conv2d_46/BiasAdd:output:0Idecoder/instance_normalization_10/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(20
.decoder/instance_normalization_10/moments/mean?
6decoder/instance_normalization_10/moments/StopGradientStopGradient7decoder/instance_normalization_10/moments/mean:output:0*
T0*0
_output_shapes
:??????????28
6decoder/instance_normalization_10/moments/StopGradient?
;decoder/instance_normalization_10/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_46/BiasAdd:output:0?decoder/instance_normalization_10/moments/StopGradient:output:0*
T0*2
_output_shapes 
:????????????2=
;decoder/instance_normalization_10/moments/SquaredDifference?
Ddecoder/instance_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2F
Ddecoder/instance_normalization_10/moments/variance/reduction_indices?
2decoder/instance_normalization_10/moments/varianceMean?decoder/instance_normalization_10/moments/SquaredDifference:z:0Mdecoder/instance_normalization_10/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:??????????*
	keep_dims(24
2decoder/instance_normalization_10/moments/variance?
8decoder/instance_normalization_10/Reshape/ReadVariableOpReadVariableOpAdecoder_instance_normalization_10_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8decoder/instance_normalization_10/Reshape/ReadVariableOp?
/decoder/instance_normalization_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   21
/decoder/instance_normalization_10/Reshape/shape?
)decoder/instance_normalization_10/ReshapeReshape@decoder/instance_normalization_10/Reshape/ReadVariableOp:value:08decoder/instance_normalization_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?2+
)decoder/instance_normalization_10/Reshape?
:decoder/instance_normalization_10/Reshape_1/ReadVariableOpReadVariableOpCdecoder_instance_normalization_10_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:decoder/instance_normalization_10/Reshape_1/ReadVariableOp?
1decoder/instance_normalization_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         ?   23
1decoder/instance_normalization_10/Reshape_1/shape?
+decoder/instance_normalization_10/Reshape_1ReshapeBdecoder/instance_normalization_10/Reshape_1/ReadVariableOp:value:0:decoder/instance_normalization_10/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?2-
+decoder/instance_normalization_10/Reshape_1?
1decoder/instance_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1decoder/instance_normalization_10/batchnorm/add/y?
/decoder/instance_normalization_10/batchnorm/addAddV2;decoder/instance_normalization_10/moments/variance:output:0:decoder/instance_normalization_10/batchnorm/add/y:output:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/add?
1decoder/instance_normalization_10/batchnorm/RsqrtRsqrt3decoder/instance_normalization_10/batchnorm/add:z:0*
T0*0
_output_shapes
:??????????23
1decoder/instance_normalization_10/batchnorm/Rsqrt?
/decoder/instance_normalization_10/batchnorm/mulMul5decoder/instance_normalization_10/batchnorm/Rsqrt:y:02decoder/instance_normalization_10/Reshape:output:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/mul?
1decoder/instance_normalization_10/batchnorm/mul_1Mul"decoder/conv2d_46/BiasAdd:output:03decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*2
_output_shapes 
:????????????23
1decoder/instance_normalization_10/batchnorm/mul_1?
1decoder/instance_normalization_10/batchnorm/mul_2Mul7decoder/instance_normalization_10/moments/mean:output:03decoder/instance_normalization_10/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????23
1decoder/instance_normalization_10/batchnorm/mul_2?
/decoder/instance_normalization_10/batchnorm/subSub4decoder/instance_normalization_10/Reshape_1:output:05decoder/instance_normalization_10/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:??????????21
/decoder/instance_normalization_10/batchnorm/sub?
1decoder/instance_normalization_10/batchnorm/add_1AddV25decoder/instance_normalization_10/batchnorm/mul_1:z:03decoder/instance_normalization_10/batchnorm/sub:z:0*
T0*2
_output_shapes 
:????????????23
1decoder/instance_normalization_10/batchnorm/add_1?
decoder/re_lu_3/Relu_1Relu5decoder/instance_normalization_10/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:????????????2
decoder/re_lu_3/Relu_1?
decoder/up_sampling2d/Shape_1Shape$decoder/re_lu_3/Relu_1:activations:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/Shape_1?
+decoder/up_sampling2d/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+decoder/up_sampling2d/strided_slice_1/stack?
-decoder/up_sampling2d/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-decoder/up_sampling2d/strided_slice_1/stack_1?
-decoder/up_sampling2d/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-decoder/up_sampling2d/strided_slice_1/stack_2?
%decoder/up_sampling2d/strided_slice_1StridedSlice&decoder/up_sampling2d/Shape_1:output:04decoder/up_sampling2d/strided_slice_1/stack:output:06decoder/up_sampling2d/strided_slice_1/stack_1:output:06decoder/up_sampling2d/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%decoder/up_sampling2d/strided_slice_1?
decoder/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
decoder/up_sampling2d/Const_1?
decoder/up_sampling2d/mul_1Mul.decoder/up_sampling2d/strided_slice_1:output:0&decoder/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
decoder/up_sampling2d/mul_1?
4decoder/up_sampling2d/resize_1/ResizeNearestNeighborResizeNearestNeighbor$decoder/re_lu_3/Relu_1:activations:0decoder/up_sampling2d/mul_1:z:0*
T0*2
_output_shapes 
:????????????*
half_pixel_centers(26
4decoder/up_sampling2d/resize_1/ResizeNearestNeighbor?
'decoder/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_47_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'decoder/conv2d_47/Conv2D/ReadVariableOp?
decoder/conv2d_47/Conv2DConv2DEdecoder/up_sampling2d/resize_1/ResizeNearestNeighbor:resized_images:0/decoder/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
decoder/conv2d_47/Conv2D?
(decoder/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(decoder/conv2d_47/BiasAdd/ReadVariableOp?
decoder/conv2d_47/BiasAddBiasAdd!decoder/conv2d_47/Conv2D:output:00decoder/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
decoder/conv2d_47/BiasAdd?
'decoder/instance_normalization_11/ShapeShape"decoder/conv2d_47/BiasAdd:output:0*
T0*
_output_shapes
:2)
'decoder/instance_normalization_11/Shape?
5decoder/instance_normalization_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5decoder/instance_normalization_11/strided_slice/stack?
7decoder/instance_normalization_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice/stack_1?
7decoder/instance_normalization_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice/stack_2?
/decoder/instance_normalization_11/strided_sliceStridedSlice0decoder/instance_normalization_11/Shape:output:0>decoder/instance_normalization_11/strided_slice/stack:output:0@decoder/instance_normalization_11/strided_slice/stack_1:output:0@decoder/instance_normalization_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/decoder/instance_normalization_11/strided_slice?
7decoder/instance_normalization_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_1/stack?
9decoder/instance_normalization_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_1/stack_1?
9decoder/instance_normalization_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_1/stack_2?
1decoder/instance_normalization_11/strided_slice_1StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_1/stack:output:0Bdecoder/instance_normalization_11/strided_slice_1/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_1?
7decoder/instance_normalization_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_2/stack?
9decoder/instance_normalization_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_2/stack_1?
9decoder/instance_normalization_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_2/stack_2?
1decoder/instance_normalization_11/strided_slice_2StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_2/stack:output:0Bdecoder/instance_normalization_11/strided_slice_2/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_2?
7decoder/instance_normalization_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7decoder/instance_normalization_11/strided_slice_3/stack?
9decoder/instance_normalization_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_3/stack_1?
9decoder/instance_normalization_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9decoder/instance_normalization_11/strided_slice_3/stack_2?
1decoder/instance_normalization_11/strided_slice_3StridedSlice0decoder/instance_normalization_11/Shape:output:0@decoder/instance_normalization_11/strided_slice_3/stack:output:0Bdecoder/instance_normalization_11/strided_slice_3/stack_1:output:0Bdecoder/instance_normalization_11/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1decoder/instance_normalization_11/strided_slice_3?
@decoder/instance_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@decoder/instance_normalization_11/moments/mean/reduction_indices?
.decoder/instance_normalization_11/moments/meanMean"decoder/conv2d_47/BiasAdd:output:0Idecoder/instance_normalization_11/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(20
.decoder/instance_normalization_11/moments/mean?
6decoder/instance_normalization_11/moments/StopGradientStopGradient7decoder/instance_normalization_11/moments/mean:output:0*
T0*/
_output_shapes
:?????????@28
6decoder/instance_normalization_11/moments/StopGradient?
;decoder/instance_normalization_11/moments/SquaredDifferenceSquaredDifference"decoder/conv2d_47/BiasAdd:output:0?decoder/instance_normalization_11/moments/StopGradient:output:0*
T0*1
_output_shapes
:???????????@2=
;decoder/instance_normalization_11/moments/SquaredDifference?
Ddecoder/instance_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2F
Ddecoder/instance_normalization_11/moments/variance/reduction_indices?
2decoder/instance_normalization_11/moments/varianceMean?decoder/instance_normalization_11/moments/SquaredDifference:z:0Mdecoder/instance_normalization_11/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@*
	keep_dims(24
2decoder/instance_normalization_11/moments/variance?
8decoder/instance_normalization_11/Reshape/ReadVariableOpReadVariableOpAdecoder_instance_normalization_11_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02:
8decoder/instance_normalization_11/Reshape/ReadVariableOp?
/decoder/instance_normalization_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   21
/decoder/instance_normalization_11/Reshape/shape?
)decoder/instance_normalization_11/ReshapeReshape@decoder/instance_normalization_11/Reshape/ReadVariableOp:value:08decoder/instance_normalization_11/Reshape/shape:output:0*
T0*&
_output_shapes
:@2+
)decoder/instance_normalization_11/Reshape?
:decoder/instance_normalization_11/Reshape_1/ReadVariableOpReadVariableOpCdecoder_instance_normalization_11_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02<
:decoder/instance_normalization_11/Reshape_1/ReadVariableOp?
1decoder/instance_normalization_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   23
1decoder/instance_normalization_11/Reshape_1/shape?
+decoder/instance_normalization_11/Reshape_1ReshapeBdecoder/instance_normalization_11/Reshape_1/ReadVariableOp:value:0:decoder/instance_normalization_11/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2-
+decoder/instance_normalization_11/Reshape_1?
1decoder/instance_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1decoder/instance_normalization_11/batchnorm/add/y?
/decoder/instance_normalization_11/batchnorm/addAddV2;decoder/instance_normalization_11/moments/variance:output:0:decoder/instance_normalization_11/batchnorm/add/y:output:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/add?
1decoder/instance_normalization_11/batchnorm/RsqrtRsqrt3decoder/instance_normalization_11/batchnorm/add:z:0*
T0*/
_output_shapes
:?????????@23
1decoder/instance_normalization_11/batchnorm/Rsqrt?
/decoder/instance_normalization_11/batchnorm/mulMul5decoder/instance_normalization_11/batchnorm/Rsqrt:y:02decoder/instance_normalization_11/Reshape:output:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/mul?
1decoder/instance_normalization_11/batchnorm/mul_1Mul"decoder/conv2d_47/BiasAdd:output:03decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????@23
1decoder/instance_normalization_11/batchnorm/mul_1?
1decoder/instance_normalization_11/batchnorm/mul_2Mul7decoder/instance_normalization_11/moments/mean:output:03decoder/instance_normalization_11/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@23
1decoder/instance_normalization_11/batchnorm/mul_2?
/decoder/instance_normalization_11/batchnorm/subSub4decoder/instance_normalization_11/Reshape_1:output:05decoder/instance_normalization_11/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:?????????@21
/decoder/instance_normalization_11/batchnorm/sub?
1decoder/instance_normalization_11/batchnorm/add_1AddV25decoder/instance_normalization_11/batchnorm/mul_1:z:03decoder/instance_normalization_11/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????@23
1decoder/instance_normalization_11/batchnorm/add_1?
decoder/re_lu_3/Relu_2Relu5decoder/instance_normalization_11/batchnorm/add_1:z:0*
T0*1
_output_shapes
:???????????@2
decoder/re_lu_3/Relu_2?
'decoder/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0decoder_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'decoder/conv2d_48/Conv2D/ReadVariableOp?
decoder/conv2d_48/Conv2DConv2D$decoder/re_lu_3/Relu_2:activations:0/decoder/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
decoder/conv2d_48/Conv2D?
(decoder/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1decoder_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(decoder/conv2d_48/BiasAdd/ReadVariableOp?
decoder/conv2d_48/BiasAddBiasAdd!decoder/conv2d_48/Conv2D:output:00decoder/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
decoder/conv2d_48/BiasAdd?
decoder/conv2d_48/SigmoidSigmoid"decoder/conv2d_48/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
decoder/conv2d_48/Sigmoid?
IdentityIdentitydecoder/conv2d_48/Sigmoid:y:0)^decoder/conv2d_45/BiasAdd/ReadVariableOp(^decoder/conv2d_45/Conv2D/ReadVariableOp)^decoder/conv2d_46/BiasAdd/ReadVariableOp(^decoder/conv2d_46/Conv2D/ReadVariableOp)^decoder/conv2d_47/BiasAdd/ReadVariableOp(^decoder/conv2d_47/Conv2D/ReadVariableOp)^decoder/conv2d_48/BiasAdd/ReadVariableOp(^decoder/conv2d_48/Conv2D/ReadVariableOp9^decoder/instance_normalization_10/Reshape/ReadVariableOp;^decoder/instance_normalization_10/Reshape_1/ReadVariableOp9^decoder/instance_normalization_11/Reshape/ReadVariableOp;^decoder/instance_normalization_11/Reshape_1/ReadVariableOp8^decoder/instance_normalization_9/Reshape/ReadVariableOp:^decoder/instance_normalization_9/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::2T
(decoder/conv2d_45/BiasAdd/ReadVariableOp(decoder/conv2d_45/BiasAdd/ReadVariableOp2R
'decoder/conv2d_45/Conv2D/ReadVariableOp'decoder/conv2d_45/Conv2D/ReadVariableOp2T
(decoder/conv2d_46/BiasAdd/ReadVariableOp(decoder/conv2d_46/BiasAdd/ReadVariableOp2R
'decoder/conv2d_46/Conv2D/ReadVariableOp'decoder/conv2d_46/Conv2D/ReadVariableOp2T
(decoder/conv2d_47/BiasAdd/ReadVariableOp(decoder/conv2d_47/BiasAdd/ReadVariableOp2R
'decoder/conv2d_47/Conv2D/ReadVariableOp'decoder/conv2d_47/Conv2D/ReadVariableOp2T
(decoder/conv2d_48/BiasAdd/ReadVariableOp(decoder/conv2d_48/BiasAdd/ReadVariableOp2R
'decoder/conv2d_48/Conv2D/ReadVariableOp'decoder/conv2d_48/Conv2D/ReadVariableOp2t
8decoder/instance_normalization_10/Reshape/ReadVariableOp8decoder/instance_normalization_10/Reshape/ReadVariableOp2x
:decoder/instance_normalization_10/Reshape_1/ReadVariableOp:decoder/instance_normalization_10/Reshape_1/ReadVariableOp2t
8decoder/instance_normalization_11/Reshape/ReadVariableOp8decoder/instance_normalization_11/Reshape/ReadVariableOp2x
:decoder/instance_normalization_11/Reshape_1/ReadVariableOp:decoder/instance_normalization_11/Reshape_1/ReadVariableOp2r
7decoder/instance_normalization_9/Reshape/ReadVariableOp7decoder/instance_normalization_9/Reshape/ReadVariableOp2v
9decoder/instance_normalization_9/Reshape_1/ReadVariableOp9decoder/instance_normalization_9/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?

?
)__inference_model_3_layer_call_fn_3818861

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_38183662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*g
_input_shapesV
T:?????????@@?::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
F
input_12:
serving_default_input_12:0?????????@@?E
decoder:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:??
?

layer-0
layer_with_weights-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api

signatures
~_default_save_signature
*&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_network?{"class_name": "Functional", "name": "model_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Decoder", "config": {"layer was saved without config": true}, "name": "decoder", "inbound_nodes": [[["input_12", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["decoder", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 64, 64, 256]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 256]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_12", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 256]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}}
?

conv_1

	conv_2


conv_3

conv_4

norm_1

norm_2

norm_3

upsampling

activation
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"class_name": "Decoder", "name": "decoder", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Decoder"}}
?
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper
?
	variables
#layer_regularization_losses

$layers
regularization_losses
trainable_variables
%non_trainable_variables
&metrics
'layer_metrics
?__call__
~_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?	

kernel
bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 64, 64, 256]}}
?	

kernel
bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_46", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 128, 128, 256]}}
?	

kernel
bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_47", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 256, 256, 128]}}
?	

kernel
bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 256, 256, 64]}}
?
	gamma
beta
8	variables
9regularization_losses
:trainable_variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_9", "trainable": true, "dtype": "float32", "groups": 256, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 64, 64, 256]}}
?
	gamma
 beta
<	variables
=regularization_losses
>trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_10", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 128, 128, 128]}}
?
	!gamma
"beta
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_11", "trainable": true, "dtype": "float32", "groups": 64, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [4, 256, 256, 64]}}
?
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "UpSampling2D", "name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "ReLU", "name": "re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}
?
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper
?
	variables
Llayer_regularization_losses

Mlayers
regularization_losses
trainable_variables
Nnon_trainable_variables
Ometrics
Player_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
L:J??20color_transform_network/decoder/conv2d_45/kernel
=:;?2.color_transform_network/decoder/conv2d_45/bias
L:J??20color_transform_network/decoder/conv2d_46/kernel
=:;?2.color_transform_network/decoder/conv2d_46/bias
K:I?@20color_transform_network/decoder/conv2d_47/kernel
<::@2.color_transform_network/decoder/conv2d_47/bias
J:H@20color_transform_network/decoder/conv2d_48/kernel
<::2.color_transform_network/decoder/conv2d_48/bias
M:K?2>color_transform_network/decoder/instance_normalization_9/gamma
L:J?2=color_transform_network/decoder/instance_normalization_9/beta
N:L?2?color_transform_network/decoder/instance_normalization_10/gamma
M:K?2>color_transform_network/decoder/instance_normalization_10/beta
M:K@2?color_transform_network/decoder/instance_normalization_11/gamma
L:J@2>color_transform_network/decoder/instance_normalization_11/beta
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
(	variables
Qlayer_regularization_losses

Rlayers
)regularization_losses
*trainable_variables
Snon_trainable_variables
Tmetrics
Ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
,	variables
Vlayer_regularization_losses

Wlayers
-regularization_losses
.trainable_variables
Xnon_trainable_variables
Ymetrics
Zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
0	variables
[layer_regularization_losses

\layers
1regularization_losses
2trainable_variables
]non_trainable_variables
^metrics
_layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
4	variables
`layer_regularization_losses

alayers
5regularization_losses
6trainable_variables
bnon_trainable_variables
cmetrics
dlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
8	variables
elayer_regularization_losses

flayers
9regularization_losses
:trainable_variables
gnon_trainable_variables
hmetrics
ilayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
<	variables
jlayer_regularization_losses

klayers
=regularization_losses
>trainable_variables
lnon_trainable_variables
mmetrics
nlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
@	variables
olayer_regularization_losses

players
Aregularization_losses
Btrainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
D	variables
tlayer_regularization_losses

ulayers
Eregularization_losses
Ftrainable_variables
vnon_trainable_variables
wmetrics
xlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
H	variables
ylayer_regularization_losses

zlayers
Iregularization_losses
Jtrainable_variables
{non_trainable_variables
|metrics
}layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
_
0
	1

2
3
4
5
6
7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
"__inference__wrapped_model_3817886?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_12?????????@@?
?2?
D__inference_model_3_layer_call_and_return_conditional_losses_3818330
D__inference_model_3_layer_call_and_return_conditional_losses_3818663
D__inference_model_3_layer_call_and_return_conditional_losses_3818828
D__inference_model_3_layer_call_and_return_conditional_losses_3818297?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_model_3_layer_call_fn_3818861
)__inference_model_3_layer_call_fn_3818397
)__inference_model_3_layer_call_fn_3818894
)__inference_model_3_layer_call_fn_3818463?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_decoder_layer_call_and_return_conditional_losses_3818229?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
input_1?????????@@?
?2?
)__inference_decoder_layer_call_fn_3818263?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
input_1?????????@@?
?B?
%__inference_signature_wrapper_3818498input_12"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_3818904?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_45_layer_call_fn_3818913?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_3818923?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_46_layer_call_fn_3818932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_3818942?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_47_layer_call_fn_3818951?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_3818962?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_48_layer_call_fn_3818971?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_instance_normalization_9_layer_call_and_return_conditional_losses_3817930?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
:__inference_instance_normalization_9_layer_call_fn_3817940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
V__inference_instance_normalization_10_layer_call_and_return_conditional_losses_3817984?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
;__inference_instance_normalization_10_layer_call_fn_3817994?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
V__inference_instance_normalization_11_layer_call_and_return_conditional_losses_3818038?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
;__inference_instance_normalization_11_layer_call_fn_3818048?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3818061?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
/__inference_up_sampling2d_layer_call_fn_3818067?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818986
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818976
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818996?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_re_lu_3_layer_call_fn_3818991
)__inference_re_lu_3_layer_call_fn_3819001
)__inference_re_lu_3_layer_call_fn_3818981?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_3817886? !":?7
0?-
+?(
input_12?????????@@?
? ";?8
6
decoder+?(
decoder????????????
F__inference_conv2d_45_layer_call_and_return_conditional_losses_3818904n8?5
.?+
)?&
inputs?????????@@?
? ".?+
$?!
0?????????@@?
? ?
+__inference_conv2d_45_layer_call_fn_3818913a8?5
.?+
)?&
inputs?????????@@?
? "!??????????@@??
F__inference_conv2d_46_layer_call_and_return_conditional_losses_3818923?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_conv2d_46_layer_call_fn_3818932?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_conv2d_47_layer_call_and_return_conditional_losses_3818942?J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_47_layer_call_fn_3818951?J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_3818962?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_48_layer_call_fn_3818971?I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
D__inference_decoder_layer_call_and_return_conditional_losses_3818229? !"9?6
/?,
*?'
input_1?????????@@?
? "??<
5?2
0+???????????????????????????
? ?
)__inference_decoder_layer_call_fn_3818263 !"9?6
/?,
*?'
input_1?????????@@?
? "2?/+????????????????????????????
V__inference_instance_normalization_10_layer_call_and_return_conditional_losses_3817984? J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
;__inference_instance_normalization_10_layer_call_fn_3817994? J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
V__inference_instance_normalization_11_layer_call_and_return_conditional_losses_3818038?!"I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
;__inference_instance_normalization_11_layer_call_fn_3818048?!"I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
U__inference_instance_normalization_9_layer_call_and_return_conditional_losses_3817930?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
:__inference_instance_normalization_9_layer_call_fn_3817940?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
D__inference_model_3_layer_call_and_return_conditional_losses_3818297? !"B??
8?5
+?(
input_12?????????@@?
p

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_3818330? !"B??
8?5
+?(
input_12?????????@@?
p 

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_3818663? !"@?=
6?3
)?&
inputs?????????@@?
p

 
? "/?,
%?"
0???????????
? ?
D__inference_model_3_layer_call_and_return_conditional_losses_3818828? !"@?=
6?3
)?&
inputs?????????@@?
p 

 
? "/?,
%?"
0???????????
? ?
)__inference_model_3_layer_call_fn_3818397? !"B??
8?5
+?(
input_12?????????@@?
p

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_3818463? !"B??
8?5
+?(
input_12?????????@@?
p 

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_3818861? !"@?=
6?3
)?&
inputs?????????@@?
p

 
? "2?/+????????????????????????????
)__inference_model_3_layer_call_fn_3818894? !"@?=
6?3
)?&
inputs?????????@@?
p 

 
? "2?/+????????????????????????????
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818976?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818986j8?5
.?+
)?&
inputs?????????@@?
? ".?+
$?!
0?????????@@?
? ?
D__inference_re_lu_3_layer_call_and_return_conditional_losses_3818996?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
)__inference_re_lu_3_layer_call_fn_3818981?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
)__inference_re_lu_3_layer_call_fn_3818991]8?5
.?+
)?&
inputs?????????@@?
? "!??????????@@??
)__inference_re_lu_3_layer_call_fn_3819001I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
%__inference_signature_wrapper_3818498? !"F?C
? 
<?9
7
input_12+?(
input_12?????????@@?";?8
6
decoder+?(
decoder????????????
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3818061?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_up_sampling2d_layer_call_fn_3818067?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????